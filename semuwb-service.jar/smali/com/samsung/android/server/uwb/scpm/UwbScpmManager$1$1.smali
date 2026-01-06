.class Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1$1;
.super Ljava/lang/Object;
.source "UwbScpmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1$1;->this$1:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1$1;->this$1:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;

    iget-object v0, v0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;->this$0:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->registerAppToScpm()V

    .line 68
    return-void
.end method
