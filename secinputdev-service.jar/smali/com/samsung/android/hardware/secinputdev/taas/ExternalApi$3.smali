.class Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;
.super Ljava/lang/Object;
.source "ExternalApi.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;


# direct methods
.method public static synthetic $r8$lambda$imJigcdUbPci0j8qPvfQOiVQo4c(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->lambda$onDisplayStateChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$s89CgySCvp9NERsyGYGeFYf1Nn0(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->lambda$onDisplayStateChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDisplayStateChanged$0()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmDispatcher(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmotionEventListener(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerMotionEventListener(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z

    .line 159
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fputmotionEventRunnable(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method private synthetic lambda$onDisplayStateChanged$1()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmDispatcher(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmotionEventListener(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->unregisterMotionEventListener(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z

    .line 169
    return-void
.end method


# virtual methods
.method public onDisplayStateChanged(ZIII)V
    .locals 4
    .param p1, "isEarly"    # Z
    .param p2, "stateLogical"    # I
    .param p3, "statePhysical"    # I
    .param p4, "displayType"    # I

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0, p2}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fputcurrentDisplayStateLogical(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;I)V

    .line 152
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    if-ne p1, v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmotionEventRunnable(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgethandler(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmotionEventRunnable(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;)V

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fputmotionEventRunnable(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;Ljava/lang/Runnable;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgethandler(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmotionEventRunnable(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 163
    :cond_1
    if-eq p2, v1, :cond_3

    if-ne p1, v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmotionEventRunnable(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgethandler(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmotionEventRunnable(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgethandler(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_3
    :goto_0
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemInputExternalApi"

    const-string v2, "register"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 173
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetbootingDump(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- ExternalApi registerMotionEvent about Taas exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
