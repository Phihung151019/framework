.class Lcom/samsung/android/server/uwb/SamsungExtension$3;
.super Ljava/lang/Object;
.source "SamsungExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/SamsungExtension;->onDeviceNotificationReceived(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field retryCount:I

.field final synthetic this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

.field final synthetic val$deviceState:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/SamsungExtension;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/SamsungExtension;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungExtension$3;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    iput p2, p0, Lcom/samsung/android/server/uwb/SamsungExtension$3;->val$deviceState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/server/uwb/SamsungExtension$3;->retryCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$3;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmEnableTask(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;

    move-result-object v0

    const-string v1, "UwbSamsungExtension"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 182
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$3;->retryCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/samsung/android/server/uwb/SamsungExtension$3;->retryCount:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 185
    :cond_0
    const-string v0, "mEnableTask is null after max retries"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$3;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmIsInitialized(Lcom/samsung/android/server/uwb/SamsungExtension;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    const-string v0, "mEnableTask is initialized"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$3;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmEnableTask(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->execute()V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$3;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    iget v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension$3;->val$deviceState:I

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$mupdateDeviceState(Lcom/samsung/android/server/uwb/SamsungExtension;I)V

    .line 194
    :cond_2
    :goto_0
    return-void
.end method
