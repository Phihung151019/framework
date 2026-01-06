.class Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;
.super Landroid/app/TaskStackListener;
.source "HdrDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFocusChanged(IZ)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 108
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fgetmSupportHdrSolution(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fgetmSemMultiWindowManager(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Lcom/samsung/android/app/SemMultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v1

    invoke-static {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fputmMultiWindowMode(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;I)V

    .line 110
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fgetmMultiWindowMode(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    .local v0, "curMultiWindowOn":Z
    :goto_0
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fgetmMultiWindowOn(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 113
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v1, v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fputmMultiWindowOn(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;Z)V

    .line 114
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$fgetmHdrState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-virtual {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateHdrMode()V

    .line 119
    .end local v0    # "curMultiWindowOn":Z
    :cond_1
    return-void
.end method
