import RowColumn from './01-row-column/Index'
import StackIndex from './02-stack'
import FlexIndex from './03-flex'

@Preview
@Entry
@Component
struct Layout {
  build() {
    Column({ space: 10 }) {
      Text('构建布局')
        .fontWeight(FontWeight.Bold)
        .fontSize(24)
        .padding(20)

      RowColumn()
      StackIndex()
      FlexIndex()
    }
    .width('100%')
    .height('90%')
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Start)
  }
}