.class Lcom/samsung/android/mcf/McfContext$1;
.super Ljava/lang/Object;
.source "McfContext.java"

# interfaces
.implements Lcom/samsung/android/mcf/AbstractClient$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcf/McfContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/McfContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/mcf/McfContext;

    .line 232
    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext$1;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/samsung/android/mcf/AbstractClient;)V
    .locals 3
    .param p1, "client"    # Lcom/samsung/android/mcf/AbstractClient;

    .line 235
    const-string v0, "onClosed "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "McfContext"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    instance-of v0, p1, Lcom/samsung/android/mcf/McfSubscriberImpl;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$1;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/mcf/McfCasterImpl;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$1;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    return-void
.end method

.method public onShutdown()V
    .locals 3

    .line 247
    const-string v0, "onShutdown"

    const-string v1, "-"

    const-string v2, "McfContext"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$1;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$1;->this$0:Lcom/samsung/android/mcf/McfContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 250
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$1;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    :cond_0
    return-void
.end method
