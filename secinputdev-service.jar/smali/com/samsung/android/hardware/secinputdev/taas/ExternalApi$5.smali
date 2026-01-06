.class Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$5;
.super Ljava/lang/Object;
.source "ExternalApi.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;


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

    .line 225
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$5;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 228
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$5;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$mrunEvent(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;Landroid/view/MotionEvent;)V

    .line 229
    return-void
.end method
