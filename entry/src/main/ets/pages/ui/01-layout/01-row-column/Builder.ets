@Builder
export function ColumnSpace() {
  Column({ space: 20 }) {
    Text('space: 20').fontSize(15).fontColor(Color.Gray).width('90%')
    Row().width('90%').height(50).backgroundColor(0xF5DEB3)
    Row().width('90%').height(50).backgroundColor(0xD2B48C)
    Row().width('90%').height(50).backgroundColor(0xF5DEB3)
  }.width('100%')
}

@Builder
export function RowSpace() {
  Row({ space: 35 }) {
    Text('space: 35').fontSize(15).fontColor(Color.Gray)
    Row().width('10%').height(150).backgroundColor(0xF5DEB3)
    Row().width('10%').height(150).backgroundColor(0xD2B48C)
    Row().width('10%').height(150).backgroundColor(0xF5DEB3)
  }.width('90%')
}

@Builder
function ColumnAlignItems(align: HorizontalAlign) {
  Column({}) {
    Column() {
    }.width('80%').height(50).backgroundColor(0xF5DEB3)

    Column() {
    }.width('80%').height(50).backgroundColor(0xD2B48C)

    Column() {
    }.width('80%').height(50).backgroundColor(0xF5DEB3)
  }
  .width('100%')
  .height(500)
  .alignItems(align)
  .backgroundColor('rgba(183, 180, 180, 1.00)')
}

@Builder
export function ColumnHorizontalAlignStart() {
  ColumnAlignItems(HorizontalAlign.Start)
}


@Builder
export function ColumnHorizontalAlignCenter() {
  ColumnAlignItems(HorizontalAlign.Center)
}


@Builder
export function ColumnHorizontalAlignEnd() {
  ColumnAlignItems(HorizontalAlign.End)
}

@Builder
export function RowAlignItems(align: VerticalAlign) {
  Row() {
    Column().width('20%').height(30).backgroundColor(0xF5DEB3)
    Column().width('20%').height(30).backgroundColor(0xD2B48C)
    Column().width('20%').height(30).backgroundColor(0xF5DEB3)
  }
  .width('100%')
  .height(200)
  .alignItems(align)
  .backgroundColor('rgba(183, 180, 180, 1.00)')
}

@Builder
export function RowVerticalAlignTop() {
  RowAlignItems(VerticalAlign.Top)
}

@Builder
export function RowVerticalAlignCenter() {
  RowAlignItems(VerticalAlign.Center)
}

@Builder
export function RowVerticalAlignBottom() {
  RowAlignItems(VerticalAlign.Bottom)
}

@Builder
function ColumnJustifyContent(align: FlexAlign) {
  Column({}) {
    Column().width('80%').height(50).backgroundColor(0xF5DEB3)
    Column().width('80%').height(50).backgroundColor(0xD2B48C)
    Column().width('80%').height(50).backgroundColor(0xF5DEB3)
  }
  .width('100%')
  .height(300)
  .backgroundColor('rgba(117, 114, 114, 1.00)')
  .justifyContent(align)
}

@Builder
export function ColumnJustifyContentStart() {
  ColumnJustifyContent(FlexAlign.Start)
}

@Builder
export function ColumnJustifyContentCenter() {
  ColumnJustifyContent(FlexAlign.Center)
}

@Builder
export function ColumnJustifyContentEnd() {
  ColumnJustifyContent(FlexAlign.End)
}

@Builder
export function ColumnJustifyContentSpaceBetween() {
  ColumnJustifyContent(FlexAlign.SpaceBetween)
}


@Builder
export function ColumnJustifyContentSpaceAround() {
  ColumnJustifyContent(FlexAlign.SpaceAround)
}

@Builder
export function ColumnJustifyContentSpaceEvenly() {
  ColumnJustifyContent(FlexAlign.SpaceEvenly)
}


@Builder
function RowJustifyContent(align: FlexAlign) {
  Row() {
    Column().width('20%').height(30).backgroundColor(0xF5DEB3)
    Column().width('20%').height(30).backgroundColor(0xD2B48C)
    Column().width('20%').height(30).backgroundColor(0xF5DEB3)
  }
  .width('100%')
  .height(200)
  .backgroundColor('rgba(162, 157, 157, 1.00)')
  .justifyContent(align)
}

@Builder
export function RowJustifyContentStart() {
  RowJustifyContent(FlexAlign.Start)
}

@Builder
export function RowJustifyContentCenter() {
  RowJustifyContent(FlexAlign.Center)
}

@Builder
export function RowJustifyContentEnd() {
  RowJustifyContent(FlexAlign.End)
}


@Builder
export function RowJustifyContentSpaceBetween() {
  RowJustifyContent(FlexAlign.SpaceBetween)
}


@Builder
export function RowJustifyContentSpaceAround() {
  RowJustifyContent(FlexAlign.SpaceAround)
}

@Builder
export function RowJustifyContentSpaceEvenly() {
  RowJustifyContent(FlexAlign.SpaceEvenly)
}

@Builder
export function BlankDemo() {
  Column() {
    Row() {
      Text('Bluetooth')
        .fontSize(18)

      Blank()

      Toggle({ type: ToggleType.Switch, isOn: true })
    }
    .width('100%')
    .padding({ left: 12 })
    .borderRadius(15)
    .backgroundColor(0xFFFFFF)
  }
  .backgroundColor(0xEFEFEF)
  .padding(20)
  .width('100%')
}

@Builder
export function layoutWeightDemo() {
  Column() {
    Text('1:2:3').width('100%')
    Row() {
      Column() {
        Text('layoutWeight(1)').textAlign(TextAlign.Center)
      }.layoutWeight(1).backgroundColor(0xF5DEB3).height('100%')

      Column() {
        Text('layoutWeight(2)').textAlign(TextAlign.Center)
      }.layoutWeight(2).backgroundColor(0xD2B48C).height('100%')

      Column() {
        Text('layoutWeight(3)').textAlign(TextAlign.Center)
      }.layoutWeight(3).backgroundColor(0xF5DEB3).height('100%')
    }.backgroundColor(0xffd306).height('30%')


    Text('2:5:3').width('100%')
    Row() {
      Column() {
        Text('layoutWeight(2)').textAlign(TextAlign.Center)
      }.layoutWeight(2).backgroundColor(0xF5DEB3).height('100%')

      Column() {
        Text('layoutWeight(5)').textAlign(TextAlign.Center)
      }.layoutWeight(5).backgroundColor(0xD2B48C).height('100%')

      Column() {
        Text('layoutWeight(3)').textAlign(TextAlign.Center)
      }.layoutWeight(3).backgroundColor(0xF5DEB3).height('100%')
    }.backgroundColor(0xffd306).height('30%')
  }
}

@Builder
export function widthDemo() {
  Column() {
    Row() {
      Column() {
        Text('left width 20%')
          .textAlign(TextAlign.Center)
      }.width('20%').backgroundColor(0xF5DEB3).height('100%')

      Column() {
        Text('center width 50%')
          .textAlign(TextAlign.Center)
      }.width('50%').backgroundColor(0xD2B48C).height('100%')

      Column() {
        Text('right width 30%')
          .textAlign(TextAlign.Center)
      }.width('30%').backgroundColor(0xF5DEB3).height('100%')
    }.backgroundColor(0xffd306).height('30%')
  }
}

@Builder
export function scrollVertical() {
  Scroll(new Scroller()) {
    Column() {
      ForEach([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], (item?: number | undefined) => {
        if (item) {
          Text(item.toString())
            .width('90%')
            .height(150)
            .backgroundColor(0xFFFFFF)
            .borderRadius(15)
            .fontSize(16)
            .textAlign(TextAlign.Center)
            .margin({ top: 10 })
        }
      }, (item: number) => item.toString())
    }.width('100%')
  }
  .height('90%')
  .backgroundColor(0xDCDCDC)
  .scrollable(ScrollDirection.Vertical) // 滚动方向为垂直方向
  .scrollBar(BarState.On) // 滚动条常驻显示
  .scrollBarColor(Color.Gray) // 滚动条颜色
  .scrollBarWidth(10) // 滚动条宽度
  .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹
}

@Builder
export function scrollHorizontal() {
  Scroll(new Scroller()) {
    Row() {
      ForEach([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], (item?: number | undefined) => {
        if (item) {
          Text(item.toString())
            .height('90%')
            .width(150)
            .backgroundColor(0xFFFFFF)
            .borderRadius(15)
            .fontSize(16)
            .textAlign(TextAlign.Center)
            .margin({ left: 10 })
        }
      })
    }.height('100%')
  }
  .height('90%')
  .backgroundColor(0xDCDCDC)
  .scrollable(ScrollDirection.Horizontal) // 滚动方向为水平方向
  .scrollBar(BarState.On) // 滚动条常驻显示
  .scrollBarColor(Color.Gray) // 滚动条颜色
  .scrollBarWidth(10) // 滚动条宽度
  .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹
}