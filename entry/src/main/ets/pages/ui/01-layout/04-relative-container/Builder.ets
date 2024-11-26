// 设置依赖关系
// 锚点设置
// RelativeContainer父组件为节点
let AlignRus: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'top': { 'anchor': '__container__', 'align': VerticalAlign.Top },
  'left': { 'anchor': '__container__', 'align': HorizontalAlign.Start }
}

let AlignRue: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'top': { 'anchor': '__container__', 'align': VerticalAlign.Top },
  'right': { 'anchor': '__container__', 'align': HorizontalAlign.End }
}

let Mleft: Record<string, number> = { 'left': 20 }
let BWC: Record<string, string | number> = { 'width': 2, 'color': '#6699FF' }

const COLOR1 = '#FF3333'
const COLOR2 = '#FFCC00'
const C_ANCHOR = '__container__'

interface SquareInterface {
  text: string
  width?: number | string
  height?: number | string
  bgColor?: string | number
  id?: string
  alignRules: AlignRuleOption
  offset?: Position | Edges | LocalizedEdges
  bgImagePosition?: Position | Alignment
  bgImageSize?: SizeOptions | ImageSize
}

@Builder
function Square(obj: SquareInterface) {
  Row() {
    Text(obj.text)
  }
  .justifyContent(FlexAlign.Center)
  .width(obj.width ?? undefined)
  .height(obj.height ?? undefined)
  .backgroundColor(obj.bgColor ?? COLOR1)
  .id(obj.id ?? obj.text)
  .alignRules(obj.alignRules)
  .offset(obj.offset ?? undefined)
  .backgroundImagePosition(obj.bgImagePosition ?? undefined)
  .backgroundImageSize(obj.bgImageSize ?? undefined)
}

@Extend(RelativeContainer)
function containerExtend() {
  .width(300)
  .height(300)
  .margin(Mleft)
  .border(BWC)
}

@Builder
export function Anchor() {
  RelativeContainer() {
    Square({
      text: 'row1',
      alignRules: AlignRus,
      width: 100,
      height: 100
    })
    Square({
      text: 'row2',
      alignRules: AlignRue,
      bgColor: COLOR2,
      width: 100,
      height: 100
    })
  }

  .containerExtend()
}


// 以兄弟元素为锚点
let alignRules2: AlignRuleOption = {
  top: { anchor: 'row1', align: VerticalAlign.Bottom },
  left: { anchor: 'row1', align: HorizontalAlign.Start }
}

@Builder
export function Anchor2() {
  RelativeContainer() {
    Square({
      text: 'row1',
      alignRules: AlignRus,
      width: 100,
      height: 100
    })
    Square({
      text: 'row2',
      alignRules: alignRules2,
      bgColor: COLOR2,
      width: 100,
      height: 100
    })
  }.containerExtend()
}

// 子组件锚点任意选择
@Builder
export function Anchor3() {
  RelativeContainer() {
    Square({
      text: 'row1',
      alignRules: AlignRus,
      width: 100,
      height: 100
    })

    Square({
      text: 'row2',
      width: 100,
      alignRules: {
        top: { anchor: '__container__', align: VerticalAlign.Top },
        right: { anchor: '__container__', align: HorizontalAlign.End },
        bottom: { anchor: 'row1', align: VerticalAlign.Center }
      },
      bgColor: '#ff298e1e'
    })

    Square({
      text: 'row3',
      height: 100,
      bgColor: '#ffff6a33',
      alignRules: {
        top: { anchor: 'row1', align: VerticalAlign.Bottom },
        left: { anchor: 'row1', align: HorizontalAlign.Start },
        right: { anchor: 'row2', align: HorizontalAlign.Start }
      }
    })

    Square({
      text: 'row4',
      bgColor: '#ffff33fd',
      alignRules: {
        top: { anchor: 'row3', align: VerticalAlign.Bottom },
        left: { anchor: 'row1', align: HorizontalAlign.Center },
        right: { anchor: 'row2', align: HorizontalAlign.End },
        bottom: { anchor: '__container__', align: VerticalAlign.Bottom }
      }
    })

  }.containerExtend()
}

// 设置相对于锚点的对齐位置
@Builder
export function Anchor4() {
  RelativeContainer() {
    Square({
      text: 'Start',
      height: '100%',
      alignRules: {
        left: { anchor: '__container__', align: HorizontalAlign.Start }
      }
    })

    Square({
      text: 'Center',
      height: '100%',
      alignRules: {
        left: { anchor: '__container__', align: HorizontalAlign.Center }
      }
    })

    Square({
      text: 'End',
      height: '100%',
      alignRules: {
        right: { anchor: '__container__', align: HorizontalAlign.End }
      }
    })
  }.containerExtend()

  RelativeContainer() {
    Square({
      text: 'Top',
      width: '100%',
      alignRules: {
        top: { anchor: '__container__', align: VerticalAlign.Top }
      }
    })
    Square({
      text: 'Center',
      width: '100%',
      alignRules: {
        center: { anchor: '__container__', align: VerticalAlign.Center }
      }
    })
    Square({
      text: 'Bottom',
      width: '100%',
      alignRules: {
        bottom: { anchor: '__container__', align: VerticalAlign.Bottom }
      }
    })
  }.containerExtend()
}

// 子组件位置偏移
@Builder
export function Anchor5() {
  RelativeContainer() {
    Square({
      text: 'row1',
      width: 100,
      height: 100,
      bgColor: COLOR1,
      alignRules: {
        top: { anchor: C_ANCHOR, align: VerticalAlign.Top },
        left: { anchor: C_ANCHOR, align: HorizontalAlign.Start }
      }
    })

    Square({
      text: 'row2',
      width: 100,
      bgColor: '#FFCC00',
      alignRules: {
        top: { anchor: C_ANCHOR, align: VerticalAlign.Top },
        right: { anchor: C_ANCHOR, align: HorizontalAlign.End },
        bottom: { anchor: 'row1', align: VerticalAlign.Center }
      },
      offset: {
        x: -40,
        y: -20
      }
    })

    Square({
      text: 'row3',
      height: 100,
      bgColor: '#FF6633',
      alignRules: {
        top: { anchor: 'row1', align: VerticalAlign.Bottom },
        left: { anchor: 'row1', align: HorizontalAlign.End },
        right: { anchor: 'row2', align: HorizontalAlign.Start }
      },
      offset: {
        x: -10,
        y: -20
      }
    })

    Square({
      text: 'row4',
      bgColor: '#FF9966',
      alignRules: {
        top: { anchor: 'row3', align: VerticalAlign.Bottom },
        bottom: { anchor: C_ANCHOR, align: VerticalAlign.Bottom },
        left: { anchor: C_ANCHOR, align: HorizontalAlign.Start },
        right: { anchor: 'row1', align: HorizontalAlign.End }
      },
      offset: {
        x: -10,
        y: -30
      }
    })

    Square({
      text: 'row5',
      bgColor: '#FF66FF',
      alignRules: {
        top: { anchor: 'row3', align: VerticalAlign.Bottom },
        bottom: { anchor: C_ANCHOR, align: VerticalAlign.Bottom },
        left: { anchor: 'row2', align: HorizontalAlign.Start },
        right: { anchor: 'row2', align: HorizontalAlign.End }
      },
      offset: {
        x: 10,
        y: 20
      }
    })

    Square({
      text: 'row6',
      bgColor: '#ff33ffb5',
      alignRules: {
        top: { anchor: 'row3', align: VerticalAlign.Bottom },
        bottom: { anchor: 'row4', align: VerticalAlign.Bottom },
        left: { anchor: 'row3', align: HorizontalAlign.Start },
        right: { anchor: 'row3', align: HorizontalAlign.End }
      },
      offset: {
        x: -15,
        y: 10
      },
      bgImagePosition: Alignment.Bottom,
      bgImageSize: ImageSize.Cover
    })
  }.containerExtend()
}

// 多种组件的对齐布局
@Builder
export function Anchor6() {
  RelativeContainer() {
    Square({
      text: 'row1',
      width: 100,
      height: 100,
      bgColor: '#ff33ffcc',
      alignRules: {
        top: { anchor: C_ANCHOR, align: VerticalAlign.Top },
        left: { anchor: C_ANCHOR, align: HorizontalAlign.Start }
      }
    })

    Square({
      text: 'row2',
      width: '50%',
      height: 30,
      bgColor: 0xAFEEEE,
      alignRules: {
        top: { anchor: C_ANCHOR, align: VerticalAlign.Top },
        left: { anchor: C_ANCHOR, align: HorizontalAlign.Center }
      }
    })

    Flex({ direction: FlexDirection.Row }) {
      Text('1').width("20%").height(50).backgroundColor(0xF5DEB3)
      Text('2').width("20%").height(50).backgroundColor(0xD2B48C)
      Text('3').width("20%").height(50).backgroundColor(0xF5DEB3)
      Text('4').width("20%").height(50).backgroundColor(0xD2B48C)
    }
    .id('row3')
    .padding(10)
    .backgroundColor('#ffedafaf')
    .alignRules({
      top: { anchor: 'row2', align: VerticalAlign.Bottom },
      left: { anchor: C_ANCHOR, align: HorizontalAlign.Start },
      bottom: { anchor: C_ANCHOR, align: VerticalAlign.Center },
      right: { anchor: 'row2', align: HorizontalAlign.Center }
    })

    Stack({ alignContent: Alignment.Bottom }) {
      Text('First child, show in bottom').width('90%').height('100%').backgroundColor(0xd2cab3).align(Alignment.Top)
      Text('Second child, show in top').width('70%').height('60%').backgroundColor(0xc1cbac).align(Alignment.Top)
    }
    .id('row4')
    .margin({ top: 5 })
    .alignRules({
      top: { anchor: 'row3', align: VerticalAlign.Bottom },
      left: { anchor: C_ANCHOR, align: HorizontalAlign.Start },
      bottom: { anchor: C_ANCHOR, align: VerticalAlign.Bottom },
      right: { anchor: 'row3', align: HorizontalAlign.End }
    })
  }.containerExtend()
}

// 组件尺寸
@Builder
export function Anchor7() {
  RelativeContainer() {
    Square({
      text: 'row1',
      width: 100,
      height: 100,
      bgColor: '#FF3333',
      alignRules: {
        top: { anchor: C_ANCHOR, align: VerticalAlign.Top },
        left: { anchor: C_ANCHOR, align: HorizontalAlign.Start }
      }
    })

    Square({
      text: 'row2',
      width: 100,
      bgColor: '#FFCC00',
      alignRules: {
        top: { anchor: C_ANCHOR, align: VerticalAlign.Top },
        right: { anchor: C_ANCHOR, align: HorizontalAlign.End },
        bottom: { anchor: 'row1', align: VerticalAlign.Center }
      }
    })

    Square({
      text: 'row3',
      height: 100,
      bgColor: '#FF6633',
      alignRules: {
        top: { anchor: 'row1', align: VerticalAlign.Bottom },
        left: { anchor: 'row1', align: HorizontalAlign.End },
        right: { anchor: 'row2', align: HorizontalAlign.Start }
      }
    })

    Square({
      text: 'row4',
      bgColor: '#FF9966',
      alignRules: {
        top: { anchor: 'row3', align: VerticalAlign.Bottom },
        left: { anchor: C_ANCHOR, align: HorizontalAlign.Start },
        bottom: { anchor: C_ANCHOR, align: VerticalAlign.Bottom },
        right: { anchor: 'row3', align: HorizontalAlign.Start }
      }
    })

    Square({
      text: 'row5',
      bgColor: '#FF66FF',
      alignRules: {
        top: { anchor: 'row3', align: VerticalAlign.Bottom },
        bottom: { anchor: C_ANCHOR, align: VerticalAlign.Bottom },
        left: { anchor: 'row3', align: HorizontalAlign.End },
        right: { anchor: C_ANCHOR, align: HorizontalAlign.End }
      }
    })

    Square({
      text: 'row6',
      bgColor: '#ff33ffb5',
      alignRules: {
        top: { anchor: 'row3', align: VerticalAlign.Bottom },
        bottom: { anchor: C_ANCHOR, align: VerticalAlign.Bottom },
        left: { anchor: 'row4', align: HorizontalAlign.End },
        right: { anchor: 'row5', align: HorizontalAlign.Start }
      }
    })
  }.containerExtend()
}









