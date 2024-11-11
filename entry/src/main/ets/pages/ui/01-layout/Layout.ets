import RowColumn from './01-row-column/Index'
import StackIndex from './02-stack'

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
    }
    .width('100%')
    .height('90%')
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Start)
  }
}