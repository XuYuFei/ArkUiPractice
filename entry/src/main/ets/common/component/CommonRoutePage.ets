@Component
export struct CommonRoutePage {
  pathInfos: NavPathStack = new NavPathStack()
  name: string = ''
  @State value: string = ''

  @Builder
  default() {
    Text('暂无数据')
  }

  @BuilderParam context: () => void = this.default

  build() {
    NavDestination() {
      this.context()
    }
    .title(this.name)
    .onReady((ctx: NavDestinationContext) => {
      this.pathInfos = ctx.pathStack
    })
  }
}