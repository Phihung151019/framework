.class final Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;
.super Ljava/lang/Object;
.source "PalmInputEventChecker.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PalmInputEventChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PalmEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/PalmInputEventChecker;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/PalmInputEventChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/PalmInputEventChecker;Lcom/android/server/ssrm/PalmInputEventChecker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;-><init>(Lcom/android/server/ssrm/PalmInputEventChecker;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 45
    move-object v0, p1

    .line 46
    .local v0, "ev":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 47
    .local v1, "toolType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    invoke-static {v2, v0}, Lcom/android/server/ssrm/PalmInputEventChecker;->-$$Nest$monRecognition(Lcom/android/server/ssrm/PalmInputEventChecker;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "ev":Landroid/view/MotionEvent;
    .end local v1    # "toolType":I
    :cond_0
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
