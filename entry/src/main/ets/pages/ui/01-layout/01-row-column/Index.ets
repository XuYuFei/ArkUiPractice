import * as Builder from './Builder'
import { Card } from '../../../../common/component/Card'
import { Title } from '../../../../common/component/Title'


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
            Card({ title: 'Column:space', component: Builder.ColumnSpace })
            Card({ title: 'Row:space', component: Builder.RowSpace })
            Title({ title: '列交叉轴对齐方式: Column.alignItems' })
            Card({ title: 'HorizontalAlign.Start', component: Builder.ColumnHorizontalAlignStart })
            Card({
              title: 'HorizontalAlign.Center',
              component: Builder.ColumnHorizontalAlignCenter
            })
            Card({ title: 'HorizontalAlign.End', component: Builder.ColumnHorizontalAlignEnd })
            Title({ title: '行交叉轴对齐方式: Row.alignItems' })
            Card({ title: 'VerticalAlign.Top', component: Builder.RowVerticalAlignTop })
            Card({ title: 'VerticalAlign.Center', component: Builder.RowVerticalAlignCenter })
            Card({ title: 'VerticalAlign.Bottom', component: Builder.RowVerticalAlignBottom })

            Title({ title: '列主轴对齐方式: Column.JustifyContent' })
            Card({ title: 'FlexAlign.Start', component: Builder.ColumnJustifyContentStart })
            Card({ title: 'FlexAlign.Center', component: Builder.ColumnJustifyContentCenter })
            Card({ title: 'FlexAlign.End', component: Builder.ColumnJustifyContentEnd })
            Card({ title: 'FlexAlign.SpaceBetween', component: Builder.ColumnJustifyContentSpaceBetween })
            Card({ title: 'FlexAlign.SpaceAround', component: Builder.ColumnJustifyContentSpaceAround })
            Card({ title: 'FlexAlign.SpaceEvenly', component: Builder.ColumnJustifyContentSpaceEvenly })

            Title({ title: '行主轴对齐方式: Row.JustifyContent' })
            Card({ title: 'FlexAlign.Start', component: Builder.RowJustifyContentStart })
            Card({ title: 'FlexAlign.Center', component: Builder.RowJustifyContentCenter })
            Card({ title: 'FlexAlign.End', component: Builder.RowJustifyContentEnd })
            Card({ title: 'FlexAlign.SpaceBetween', component: Builder.RowJustifyContentSpaceBetween })
            Card({ title: 'FlexAlign.SpaceAround', component: Builder.RowJustifyContentSpaceAround })
            Card({ title: 'FlexAlign.SpaceEvenly', component: Builder.RowJustifyContentSpaceEvenly })

            Title({ title: '自适应拉伸：Blank' })
            Card({ title: 'Blank', component: Builder.BlankDemo })

            Title({ title: '自适应缩放' })
            Card({ title: 'layoutWeight', component: Builder.layoutWeightDemo })
            Card({ title: 'width', component: Builder.widthDemo })

            Title({ title: '自适应延伸' })
            Card({ title: 'ScrollDirection.Vertical', component: Builder.scrollVertical })
            Card({ title: 'ScrollDirection.Horizontal', component: Builder.scrollHorizontal })
          }

        }
        .padding(20)
        .height(600)
      }
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}