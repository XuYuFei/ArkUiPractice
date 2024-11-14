@Component
export struct UiModule {
  @Consume title: string
  @Consume show: boolean

  @Builder
  default() {
    Text('暂无数据')
  }

  @BuilderParam content: () => void = this.default

  build() {
    Column() {
      Text(this.title)
        .fontColor(Color.Gray)
        .padding({ left: 20, right: 20 })
        .onClick(() => {
          this.show = !this.show
        })

      if (this.show) {
        Scroll() {
          Column({ space: 10 }) {
            this.content()
          }
          .alignItems(HorizontalAlign.Start)
        }
        .padding(20)
        .height(600)

      }
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}