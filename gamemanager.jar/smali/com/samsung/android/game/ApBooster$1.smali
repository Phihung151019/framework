.class Lcom/samsung/android/game/ApBooster$1;
.super Landroid/os/Handler;
.source "ApBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/ApBooster;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/ApBooster;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/ApBooster;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/ApBooster;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/samsung/android/game/ApBooster$1;->this$0:Lcom/samsung/android/game/ApBooster;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster$1;->this$0:Lcom/samsung/android/game/ApBooster;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/game/ApBooster;->-$$Nest$msetDvfsValue(Lcom/samsung/android/game/ApBooster;II)V

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster$1;->this$0:Lcom/samsung/android/game/ApBooster;

    invoke-static {v0}, Lcom/samsung/android/game/ApBooster;->-$$Nest$mrelease(Lcom/samsung/android/game/ApBooster;)V

    .line 41
    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster$1;->this$0:Lcom/samsung/android/game/ApBooster;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/game/ApBooster;->-$$Nest$macquire(Lcom/samsung/android/game/ApBooster;II)V

    .line 38
    nop

    .line 46
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
