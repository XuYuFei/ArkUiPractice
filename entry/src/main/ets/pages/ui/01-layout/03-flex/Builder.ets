const COLOR1 = 0xF5DEB3
const COLOR2 = 0xD2B48C
const COLOR3 = 0xAFEEEE

// 布局方向
@Builder
function _FlexDirection(direction: FlexDirection) {
  Flex({ direction }) {
    Text('1').width('33%').height(50).backgroundColor(0xF5DEB3)
    Text('2').width('33%').height(50).backgroundColor(0xD2B48C)
    Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
  }
  .width('100%')
  .height(70)
  .padding(10)
  .backgroundColor(0xAFEEEE)
}

@Builder
export function FlexDirectionRow() {
  _FlexDirection(FlexDirection.Row)
}

@Builder
export function FlexDirectionRowReverse() {
  _FlexDirection(FlexDirection.RowReverse)
}

@Builder
export function FlexDirectionColumn() {
  _FlexDirection(FlexDirection.Column)
}

@Builder
export function FlexDirectionColumnReverse() {
  _FlexDirection(FlexDirection.ColumnReverse)
}

// 布局换行
@Builder
function _FlexWrap(wrap: FlexWrap) {
  Flex({ wrap }) {
    Text('1').width('50%').height(50).backgroundColor(0xF5DEB3)
    Text('2').width('50%').height(50).backgroundColor(0xD2B48C)
    Text('3').width('50%').height(50).backgroundColor(0xF5DEB3)
  }
  .width('90%')
  .padding(10)
  .backgroundColor(0xAFEEEE)
}

@Builder
export function FlexWrapNoWrap() {
  _FlexWrap(FlexWrap.NoWrap)
}

@Builder
export function FlexWrapWrap() {
  _FlexWrap(FlexWrap.Wrap)
}

@Builder
export function FlexWrapWrapReverse() {
  _FlexWrap(FlexWrap.WrapReverse)
}

// 主轴对齐方式
let PTopBottom: Record<string, number> = { 'top': 10, 'bottom': 10 }

@Builder
function _FlexAlign(justifyContent: FlexAlign) {
  Flex({ justifyContent }) {
    Text('1').width('20%').height(50).backgroundColor(COLOR1)
    Text('2').width('20%').height(50).backgroundColor(COLOR2)
    Text('3').width('20%').height(50).backgroundColor(COLOR1)
  }
  .width('90%')
  .padding(PTopBottom)
  .backgroundColor(0xAFEEEE)
}

@Builder
export function FlexAlignStart() {
  _FlexAlign(FlexAlign.Start)
}

@Builder
export function FlexAlignCenter() {
  _FlexAlign(FlexAlign.Center)
}

@Builder
export function FlexAlignEnd() {
  _FlexAlign(FlexAlign.End)
}

@Builder
export function FlexAlignSpaceBetween() {
  _FlexAlign(FlexAlign.SpaceBetween)
}

@Builder
export function FlexAlignSpaceAround() {
  _FlexAlign(FlexAlign.SpaceAround)
}

@Builder
export function FlexAlignSpaceEvenly() {
  _FlexAlign(FlexAlign.SpaceEvenly)
}

// 交叉轴对齐方式
// 容器组件设置交叉轴对齐
let SWh: Record<string, number | string> = { 'width': '90%', 'height': '80' }

@Builder
function _ItemAlign(alignItems: ItemAlign) {
  Flex({ alignItems }) {
    Text('1').width('33%').height(30).backgroundColor(COLOR1)
    Text('2').width('33%').height(40).backgroundColor(COLOR2)
    Text('3').width('33%').height(50).backgroundColor(COLOR1)
  }
  .size(SWh)
  .padding(10)
  .backgroundColor(0xAFEEEE)
}


@Builder
export function ItemAlignAuto() {
  _ItemAlign(ItemAlign.Auto)
}

@Builder
export function ItemAlignStart() {
  _ItemAlign(ItemAlign.Start)
}

@Builder
export function ItemAlignCenter() {
  _ItemAlign(ItemAlign.Center)
}

@Builder
export function ItemAlignEnd() {
  _ItemAlign(ItemAlign.End)
}

@Builder
export function ItemAlignStretch() {
  _ItemAlign(ItemAlign.Stretch)
}

@Builder
export function ItemAlignBaseline() {
  _ItemAlign(ItemAlign.Baseline)
}

// 子元素设置交叉轴对齐
@Builder
export function FlexAlignSelf() {
  Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center }) {
    Text('alignSelf Start').width('25%').height(80)
      .alignSelf(ItemAlign.Start)
      .backgroundColor(COLOR1)

    Text('alignSelf Baseline').width('25%').height(80)
      .alignSelf(ItemAlign.Baseline)
      .backgroundColor(COLOR2)

    Text('alignSelf Baseline').width('25%').height(100)
      .alignSelf(ItemAlign.Baseline)
      .backgroundColor(COLOR1)

    Text('no alignSelf').width('25%').height(100)
      .backgroundColor(COLOR1)
    Text('no alignSelf').width('25%').height(100)
      .backgroundColor(COLOR2)


  }
  .width('90%')
  .height(220)
  .backgroundColor(COLOR3)
}

// 内容对齐
@Builder
function _AlignContent(alignContent: FlexAlign) {
  Flex({ justifyContent: FlexAlign.SpaceBetween, wrap: FlexWrap.Wrap, alignContent }) {
    Text('1').width('30%').height(20).backgroundColor(COLOR1)
    Text('2').width('60%').height(20).backgroundColor(COLOR2)
    Text('3').width('40%').height(20).backgroundColor(COLOR2)
    Text('4').width('30%').height(20).backgroundColor(COLOR1)
    Text('5').width('20%').height(20).backgroundColor(COLOR2)
  }
  .width('90%')
  .height(100)
  .backgroundColor(COLOR3)
}

@Builder
export function AlignContentStart() {
  _AlignContent(FlexAlign.Start)
}

@Builder
export function AlignContentCenter() {
  _AlignContent(FlexAlign.Center)
}

@Builder
export function AlignContentEnd() {
  _AlignContent(FlexAlign.End)
}

@Builder
export function AlignContentSpaceBetween() {
  _AlignContent(FlexAlign.SpaceBetween)
}

@Builder
export function AlignContentSpaceAround() {
  _AlignContent(FlexAlign.SpaceAround)
}

@Builder
export function AlignContentSpaceEvenly() {
  _AlignContent(FlexAlign.SpaceEvenly)
}

// 自适应拉伸
@Builder
export function FlexBasis() {
  Flex() {
    Text('flexBasis("auto")')
      .flexBasis('auto')
      .height(100)
      .backgroundColor(COLOR1)
    Text('flexBasic("auto") width("40%")')
      .width('40%')
      .flexBasis("auto")
      .height(100)
      .backgroundColor(COLOR2)

    Text('flexBasis(100)')
      .flexBasis(100)
      .height(100)
      .backgroundColor(COLOR1)

    Text('flexBasis(100)')
      .flexBasis(100)
      .width(200)
      .height(100)
      .backgroundColor(COLOR2)
  }
  .width('90%')
  .height(120)
  .padding(10)
  .backgroundColor(COLOR3)
}

@Builder
export function FlexGrow() {
  Flex() {
    Text('flexGrow(2)')
      .flexGrow(2)
      .width(100)
      .height(100)
      .backgroundColor(COLOR1)

    Text('flexGrow(3)')
      .flexGrow(3)
      .width(100)
      .height(100)
      .backgroundColor(COLOR2)
    Text('no flexGrow')
      .width(100)
      .height(100)
      .backgroundColor(COLOR1)
  }
  .width(420)
  .height(120)
  .padding(10)
  .backgroundColor(COLOR3)
}

@Builder
export function FlexShrink() {
  Flex({ direction: FlexDirection.Row }) {
    Text('flexShrink(3)')
      .flexShrink(3)
      .width(200)
      .height(100)
      .backgroundColor(COLOR1)

    Text('no flexShrink')
      .width(200)
      .height(100)
      .backgroundColor(COLOR2)

    Text('flexShrink(2)')
      .flexShrink(2)
      .width(200)
      .height(100)
      .backgroundColor(COLOR1)
  }
  .width(400)
  .height(120)
  .padding(10)
  .backgroundColor(COLOR3)
}

@Builder
export function FlexExample() {
  Column() {
    Column() {
      Flex({
        direction: FlexDirection.Row,
        wrap: FlexWrap.NoWrap,
        justifyContent: FlexAlign.SpaceBetween,
        alignItems: ItemAlign.Center
      }) {
        Text('1').width('30%').height(50).backgroundColor(COLOR1)
        Text('2').width('30%').height(50).backgroundColor(COLOR2)
        Text('3').width('30%').height(50).backgroundColor(COLOR1)
      }
      .height(70)
      .width('90%')
      .backgroundColor(COLOR3)
    }
    .width('100%')
    .margin({ top: 5 })
  }
  .width('100%')
}