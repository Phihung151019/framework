.class Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;
.super Lcom/samsung/android/uwb_extras/ISecUwbCallback$Stub;
.source "UwbExtrasAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->registerSecUwbCallback(Lcom/samsung/android/uwb_extras/SecUwbCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;

.field final synthetic blacklist val$callback:Lcom/samsung/android/uwb_extras/SecUwbCallback;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;Lcom/samsung/android/uwb_extras/SecUwbCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;
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

    .line 94
    iput-object p1, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;->this$0:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;

    iput-object p2, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;->val$callback:Lcom/samsung/android/uwb_extras/SecUwbCallback;

    invoke-direct {p0}, Lcom/samsung/android/uwb_extras/ISecUwbCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifySessionToken(II)V
    .locals 2
    .param p1, "sessionID"    # I
    .param p2, "token"    # I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;->this$0:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;

    invoke-static {v0}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->-$$Nest$fgetmAppExecutor(Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$2;-><init>(Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public blacklist onNotification(II[B)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "rawUciNtf"    # [B

    .line 97
    iget-object v0, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;->this$0:Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;

    invoke-static {v0}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->-$$Nest$fgetmAppExecutor(Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1$1;-><init>(Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;II[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
