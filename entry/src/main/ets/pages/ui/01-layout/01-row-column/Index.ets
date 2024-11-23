import * as UiBuilder from './Builder'
import { Card } from '../../../../common/component/Card'
import { Title } from '../../../../common/component/Title'
import { CommonRoutePage } from '../../../../common/component/CommonRoutePage'
import { UiModule } from '../../../../common/component/UiModule'

@Builder
export function RowColumnPageBuilder(name: string, param: string) {
  CommonRoutePage({
    name,
    value: param,
    context: RowColumnBuilder
  })
}

@Builder
function RowColumnBuilder() {
  Index()
}

@Preview
@Component
export default struct Index {
  @Provide title: string = '线性布局 Row/Column'
  @Provide show: boolean = true

  @Builder
  content() {
    Card({
      title: 'Column:space', component: UiBuilder.ColumnSpace
    })
    Card({
      title: 'Row:space', component: UiBuilder.RowSpace
    })
    Title({
      title: '列交叉轴对齐方式: Column.alignItems'
    })
    Card({
      title: 'HorizontalAlign.Start', component: UiBuilder.ColumnHorizontalAlignStart
    })
    Card({
      title: 'HorizontalAlign.Center',
      component: UiBuilder.ColumnHorizontalAlignCenter
    })
    Card({
      title: 'HorizontalAlign.End', component: UiBuilder.ColumnHorizontalAlignEnd
    })
    Title({
      title: '行交叉轴对齐方式: Row.alignItems'
    })
    Card({
      title: 'VerticalAlign.Top', component: UiBuilder.RowVerticalAlignTop
    })
    Card({
      title: 'VerticalAlign.Center', component: UiBuilder.RowVerticalAlignCenter
    })
    Card({
      title: 'VerticalAlign.Bottom', component: UiBuilder.RowVerticalAlignBottom
    })

    Title({
      title: '列主轴对齐方式: Column.JustifyContent'
    })
    Card({
      title: 'FlexAlign.Start', component: UiBuilder.ColumnJustifyContentStart
    })
    Card({
      title: 'FlexAlign.Center', component: UiBuilder.ColumnJustifyContentCenter
    })
    Card({
      title: 'FlexAlign.End', component: UiBuilder.ColumnJustifyContentEnd
    })
    Card({
      title: 'FlexAlign.SpaceBetween', component: UiBuilder.ColumnJustifyContentSpaceBetween
    })
    Card({
      title: 'FlexAlign.SpaceAround', component: UiBuilder.ColumnJustifyContentSpaceAround
    })
    Card({
      title: 'FlexAlign.SpaceEvenly', component: UiBuilder.ColumnJustifyContentSpaceEvenly
    })

    Title({
      title: '行主轴对齐方式: Row.JustifyContent'
    })
    Card({
      title: 'FlexAlign.Start', component: UiBuilder.RowJustifyContentStart
    })
    Card({
      title: 'FlexAlign.Center', component: UiBuilder.RowJustifyContentCenter
    })
    Card({
      title: 'FlexAlign.End', component: UiBuilder.RowJustifyContentEnd
    })
    Card({
      title: 'FlexAlign.SpaceBetween', component: UiBuilder.RowJustifyContentSpaceBetween
    })
    Card({
      title: 'FlexAlign.SpaceAround', component: UiBuilder.RowJustifyContentSpaceAround
    })
    Card({
      title: 'FlexAlign.SpaceEvenly', component: UiBuilder.RowJustifyContentSpaceEvenly
    })

    Title({
      title: '自适应拉伸：Blank'
    })
    Card({
      title: 'Blank', component: UiBuilder.BlankDemo
    })

    Title({
      title: '自适应缩放'
    })
    Card({
      title: 'layoutWeight', component: UiBuilder.layoutWeightDemo
    })
    Card({
      title: 'width', component: UiBuilder.widthDemo
    })

    Title({
      title: '自适应延伸'
    })
    Card({
      title: 'ScrollDirection.Vertical', component: UiBuilder.scrollVertical
    })
    Card({
      title: 'ScrollDirection.Horizontal', component: UiBuilder.scrollHorizontal
    })
  }

  build() {
    UiModule({
      content: this.content
    })
  }
}
