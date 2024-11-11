// 开发布局

let MTop: Record<string, number> = { 'top': 50 }

@Builder
export function LayoutDemo() {
  Column() {
    Stack() {
      Column().width('90%').height('100%').backgroundColor('#ff58b87c')
      Text('text').width('60%').height('60%').backgroundColor('#ffc3f6aa')
      Button('button').width('30%').height('30%').backgroundColor('#ff8ff3eb').fontColor('#000')
    }.width('100%').height(150).margin(MTop)
  }
}


// 对齐方式
@Builder
export function Align(alignContent: Alignment) {
  Stack({ alignContent }) {
    Text('Stack').width('90%').height('100%').backgroundColor('#e1dede').align(Alignment.BottomEnd)
    Text('Item 1').width('70%').height('80%').backgroundColor(0xd2cab3).align(Alignment.BottomEnd)
    Text('Item 2').width('50%').height('60%').backgroundColor(0xc1cbac).align(Alignment.BottomEnd)
  }.width('100%').height(150).margin({ top: 5 })
}

@Builder
export function AlignTopStart() {
  Align(Alignment.TopStart)
}

@Builder
export function AlignTop() {
  Align(Alignment.Top)
}

@Builder
export function AlignTopEnd() {
  Align(Alignment.TopEnd)
}

@Builder
export function AlignStart() {
  Align(Alignment.Start)
}

@Builder
export function AlignCenter() {
  Align(Alignment.Center)
}

@Builder
export function AlignEnd() {
  Align(Alignment.End)
}

@Builder
export function AlignBottomStart() {
  Align(Alignment.BottomStart)
}


@Builder
export function AlignBottom() {
  Align(Alignment.Bottom)
}

@Builder
export function AlignBottomEnd() {
  Align(Alignment.BottomEnd)
}

// Z序控制
@Builder
export function ZIndex() {
  Stack({ alignContent: Alignment.BottomStart }) {
    Column() {
      Text('Stack子元素').textAlign(TextAlign.End).fontSize(20)
    }.width(100).height(100).backgroundColor(0xffd306).zIndex(2)

    Column() {
      Text('Stack子元素2').fontSize(20)
    }.width(150).height(150).backgroundColor(Color.Pink).zIndex(1)

    Column() {
      Text('Stack子元素3').fontSize(20)
    }.width(200).height(200).backgroundColor(Color.Grey)
  }.width(350).height(350).backgroundColor(0xe0e0e0)
}

// 场景示例
@Builder
export function StackDemo() {
  Stack({ alignContent: Alignment.Bottom }) {
    Flex({ wrap: FlexWrap.Wrap }) {
      ForEach(['App1', 'App2', 'App3', 'App4', 'App5', 'App6', 'App7', 'App8'], (item: string) => {
        Text(item)
          .width(80)
          .height(80)
          .fontSize(16)
          .margin(10)
          .textAlign(TextAlign.Center)
          .borderRadius(10)
          .backgroundColor(0xFFFFFF)
      }, (item: string) => item)
    }.width('100%').height('100%')

    Flex({ justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center }) {
      Text('联系人').fontSize(16)
      Text('设置').fontSize(16)
      Text('短信').fontSize(16)
    }
    .width('50%')
    .height(50)
    .backgroundColor('#16302e2d')
    .margin({ bottom: 15 })
    .borderRadius(15)

  }.width('100%').height('85%').backgroundColor('#CFD0CF')
}
