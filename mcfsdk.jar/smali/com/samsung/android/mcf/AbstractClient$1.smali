.class Lcom/samsung/android/mcf/AbstractClient$1;
.super Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;
.source "AbstractClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/AbstractClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcf/AbstractClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/AbstractClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/mcf/AbstractClient;

    .line 383
    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient$1;->this$0:Lcom/samsung/android/mcf/AbstractClient;

    invoke-direct {p0}, Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onCatchMcfServiceStateChanged(II)Z
    .locals 2
    .param p1, "state"    # I
    .param p2, "arg1"    # I

    .line 385
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient$1;->this$0:Lcom/samsung/android/mcf/AbstractClient;

    .line 387
    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient$1;->this$0:Lcom/samsung/android/mcf/AbstractClient;

    invoke-static {v1}, Lcom/samsung/android/mcf/AbstractClient;->access$000(Lcom/samsung/android/mcf/AbstractClient;)Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/mcf/AbstractClient$StatusListener;->onShutdown()V

    .line 389
    return v0

    .line 391
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
