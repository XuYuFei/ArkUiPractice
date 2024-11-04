import * as RowColumn from './Component'
import { Card } from '../../../../component/Card'
import { Title } from '../../../../component/Title'


@Component
export default struct Index {
  @State showRowColumn: boolean = false

  build() {

    Column() {
      Text('线性布局 Row/Column')
        .fontColor(Color.Gray)
        .padding({ left: 20, right: 20 })
        .onClick(() => {
          this.showRowColumn = !this.showRowColumn
        })


      if (this.showRowColumn) {
        Scroll() {
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

        }
        .padding(20)
      }
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}