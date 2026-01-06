.class Lcom/samsung/vekit/Control/VEController$1;
.super Ljava/lang/Object;
.source "VEController.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/AnimationStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/vekit/Control/VEController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method constructor <init>(Lcom/samsung/vekit/Control/VEController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/vekit/Control/VEController;

    .line 96
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCanceled(Ljava/lang/Object;)V
    .locals 2
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationCanceled : UI Animations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-virtual {v0}, Lcom/samsung/vekit/Control/VEController;->clearAnimations()V

    .line 119
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    .line 120
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .locals 2
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationFinished : UI Animations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-virtual {v0}, Lcom/samsung/vekit/Control/VEController;->cancelAnimation()V

    .line 112
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    .line 113
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .locals 2
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationStarted : UI Animations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    .line 101
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .locals 2
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationUpdated : UI Animations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method
