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