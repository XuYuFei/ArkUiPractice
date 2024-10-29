import * as RowColumn from './01-row-column/RowColumn'
import { Card } from '../../../component/Card'
import { Title } from '../../../component/Title'

@Entry
@Component
struct Layout {
  @State showRowColumn: boolean = true

  build() {
    Column({ space: 10 }) {
      Text('构建布局')
        .fontWeight(FontWeight.Bold)
        .fontSize(24)
        .padding(20)


      Scroll() {
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
              Title({ title: '列交叉轴对齐方式: Column.alignItems' })
              Card({ title: 'HorizontalAlign.Start', component: RowColumn.ColumnHorizontalAlignStart })
              Card({
                title: 'HorizontalAlign.Center',
                component: RowColumn.ColumnHorizontalAlignCenter
              })
              Card({ title: 'HorizontalAlign.End', component: RowColumn.ColumnHorizontalAlignEnd })
              Title({ title: '行交叉轴对齐方式: Row.alignItems' })
              Card({ title: 'VerticalAlign.Top', component: RowColumn.RowVerticalAlignTop })
              Card({ title: 'VerticalAlign.Center', component: RowColumn.RowVerticalAlignCenter })
              Card({ title: 'VerticalAlign.Bottom', component: RowColumn.RowVerticalAlignBottom })

              Title({ title: '列主轴对齐方式: Column.JustifyContent' })
              Card({ title: 'FlexAlign.Start', component: RowColumn.ColumnJustifyContentStart })
              Card({ title: 'FlexAlign.Center', component: RowColumn.ColumnJustifyContentCenter })
              Card({ title: 'FlexAlign.End', component: RowColumn.ColumnJustifyContentEnd })
              Card({ title: 'FlexAlign.SpaceBetween', component: RowColumn.ColumnJustifyContentSpaceBetween })
              Card({ title: 'FlexAlign.SpaceAround', component: RowColumn.ColumnJustifyContentSpaceAround })
              Card({ title: 'FlexAlign.SpaceEvenly', component: RowColumn.ColumnJustifyContentSpaceEvenly })

              Title({ title: '行主轴对齐方式: Row.JustifyContent' })
              Card({ title: 'FlexAlign.Start', component: RowColumn.RowJustifyContentStart })
              Card({ title: 'FlexAlign.Center', component: RowColumn.RowJustifyContentCenter })
              Card({ title: 'FlexAlign.End', component: RowColumn.RowJustifyContentEnd })
              Card({ title: 'FlexAlign.SpaceBetween', component: RowColumn.RowJustifyContentSpaceBetween })
              Card({ title: 'FlexAlign.SpaceAround', component: RowColumn.RowJustifyContentSpaceAround })
              Card({ title: 'FlexAlign.SpaceEvenly', component: RowColumn.RowJustifyContentSpaceEvenly })

              Title({ title: '自适应拉伸：Blank' })
              Card({ title: 'Blank', component: RowColumn.BlankDemo })

              Title({ title: '自适应缩放' })
              Card({ title: 'layoutWeight', component: RowColumn.layoutWeightDemo })
              Card({ title: 'width', component: RowColumn.widthDemo })

              Title({ title: '自适应延伸' })
              Card({ title: 'ScrollDirection.Vertical', component: RowColumn.scrollVertical })
              Card({ title: 'ScrollDirection.Horizontal', component: RowColumn.scrollHorizontal })
            }
            .margin({ top: 20 })

          }
        }
        .width('100%')
        .alignItems(HorizontalAlign.Start)
      }
      .padding(20)
    }
    .width('100%')
    .height('90%')
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Start)
  }
}