.class Lcom/android/uiautomator/core/InteractionController$1;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;

.field final synthetic val$keyCode:I

.field final synthetic val$metaState:I


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/InteractionController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$1;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$1;->val$keyCode:I

    iput p3, p0, Lcom/android/uiautomator/core/InteractionController$1;->val$metaState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 190
    .local v1, "eventTime":J
    new-instance v0, Landroid/view/KeyEvent;

    iget v6, p0, Lcom/android/uiautomator/core/InteractionController$1;->val$keyCode:I

    iget v8, p0, Lcom/android/uiautomator/core/InteractionController$1;->val$metaState:I

    const/4 v11, 0x0

    const/16 v12, 0x101

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v13, v0

    .line 193
    .local v13, "downEvent":Landroid/view/KeyEvent;
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController$1;->this$0:Lcom/android/uiautomator/core/InteractionController;

    invoke-static {v0, v13}, Lcom/android/uiautomator/core/InteractionController;->-$$Nest$minjectEventSync(Lcom/android/uiautomator/core/InteractionController;Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Landroid/view/KeyEvent;

    iget v6, p0, Lcom/android/uiautomator/core/InteractionController$1;->val$keyCode:I

    iget v8, p0, Lcom/android/uiautomator/core/InteractionController$1;->val$metaState:I

    const/4 v11, 0x0

    const/16 v12, 0x101

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 197
    .local v0, "upEvent":Landroid/view/KeyEvent;
    iget-object v3, p0, Lcom/android/uiautomator/core/InteractionController$1;->this$0:Lcom/android/uiautomator/core/InteractionController;

    invoke-static {v3, v0}, Lcom/android/uiautomator/core/InteractionController;->-$$Nest$minjectEventSync(Lcom/android/uiautomator/core/InteractionController;Landroid/view/InputEvent;)Z

    .line 199
    .end local v0    # "upEvent":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method
