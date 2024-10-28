import * as RowColumn from './01-row-column/RowColumn'
import { Card } from '../../../component/Card'

@Entry
@Component
struct Layout {
  @State showRowColumn: boolean = true

  build() {
    Column({ space: 10 }) {
      Text('构建布局')
        .fontWeight(FontWeight.Bold)
        .fontSize(24)
        .margin({ bottom: 25 })

      Column() {
        Text('线性布局 Row/Column')
          .fontColor(Color.Gray)
          .onClick(() => {
            this.showRowColumn = !this.showRowColumn
          })

        if (this.showRowColumn) {
          Column({ space: 10 }) {
            Card({ title: 'Column:space', component: RowColumn.ColumnSpace })
            Card({ title: 'Row:space', component: RowColumn.RowSpace })
            Card({ title: 'Column.alignItems:HorizontalAlign.Start', component: RowColumn.ColumnHorizontalAlignStart })
            Card({
              title: 'Column.alignItems:HorizontalAlign.Center',
              component: RowColumn.ColumnHorizontalAlignCenter
            })
            Card({ title: 'Column.alignItems:HorizontalAlign.End', component: RowColumn.ColumnHorizontalAlignEnd })
            Card({ title: 'Row.alignItems:VerticalAlign.Top', component: RowColumn.RowVerticalAlignTop })
            Card({ title: 'Row.alignItems:VerticalAlign.Center', component: RowColumn.RowVerticalAlignCenter })
            Card({ title: 'Row.alignItems:VerticalAlign.Bottom', component: RowColumn.RowVerticalAlignBottom })
            Card({ title: 'Column:JustifyContent:FlexAlign.Start', component: RowColumn.ColumnJustifyContentStart })
          }
          .margin({ top: 20 })
        }
      }
      .width('100%')
      .alignItems(HorizontalAlign.Start)

    }
    .width('100%')
    .height('100%')
    .padding(20)
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Start)
  }
}