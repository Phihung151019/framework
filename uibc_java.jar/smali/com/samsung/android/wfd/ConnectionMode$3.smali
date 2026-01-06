.class Lcom/samsung/android/wfd/ConnectionMode$3;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/ConnectionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wfd/ConnectionMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/wfd/ConnectionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/wfd/ConnectionMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectionMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "ownerPackageName"

    const-string v4, ", PackageName : "

    const-string v5, "Display ID : "

    const-string v6, "PresentationObjectCnt : "

    const-string v7, "displayID"

    const/4 v8, -0x1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v9, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v6, v6, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v5, v5, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 210
    :cond_0
    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v9, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v6, v6, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v5, v5, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_1
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 217
    :cond_2
    const-string v1, "com.samsung.intent.action.UPDATE_HIDDEN_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    const-string v1, "update"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received mHiddenDisplayID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v3, v3, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iput v8, v1, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    .line 225
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$3;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v1}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayInformation()V

    .line 226
    return-void
.end method
