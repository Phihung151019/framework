.class Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA$1;
.super Ljava/lang/Object;
.source "SemInputTaasTestCaseA.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->callSurfaceTimerStates(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->-$$Nest$mgetSurfaceTimerStates(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
