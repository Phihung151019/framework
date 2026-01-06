.class Lcom/android/commands/mw/MultiWindowCmd$1;
.super Landroid/os/ResultReceiver;
.source "MultiWindowCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/mw/MultiWindowCmd;->runCommand([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/commands/mw/MultiWindowCmd;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/mw/MultiWindowCmd;
    .param p2, "arg0"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 77
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method
