@Component
export struct Title {
  @Require @Prop title: string
  @Prop fontSize: number = 12

  build() {
    Text(this.title)
      .fontSize(this.fontSize)
      .width('100%')
      .fontColor(Color.Gray)
  }
}