.class public Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;
.super Ljava/lang/Object;
.source "SemHiddenDisplayInputManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemHiddenDisplayInputManager"

.field private static final UIBC_MODE_HIDDEN_DISPLAY_INPUT:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "SemHiddenDisplayInputManager"

    invoke-static {v0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iput-object p1, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/samsung/android/wfd/WFDUibcManager;

    iget-object v1, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/wfd/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    .line 31
    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wfd/WFDUibcManager;->stop(Z)Z

    .line 53
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wfd/WFDUibcManager;->start(Z)Z

    .line 42
    :cond_0
    return-void
.end method

.method public sendTouchEvent(II[I[I[I)V
    .locals 8
    .param p1, "action"    # I
    .param p2, "pointers"    # I
    .param p3, "id"    # [I
    .param p4, "X"    # [I
    .param p5, "Y"    # [I

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INJECT_EVENTS"

    const-string v3, "Need INJECT_EVENT Permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/samsung/android/wfd/SemHiddenDisplayInputManager;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "action":I
    .end local p2    # "pointers":I
    .end local p3    # "id":[I
    .end local p4    # "X":[I
    .end local p5    # "Y":[I
    .local v3, "action":I
    .local v4, "pointers":I
    .local v5, "id":[I
    .local v6, "X":[I
    .local v7, "Y":[I
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/wfd/WFDUibcManager;->addTouchEvent(II[I[I[I)Z

    move-result v0

    goto :goto_0

    .line 70
    .end local v3    # "action":I
    .end local v4    # "pointers":I
    .end local v5    # "id":[I
    .end local v6    # "X":[I
    .end local v7    # "Y":[I
    .restart local p1    # "action":I
    .restart local p2    # "pointers":I
    .restart local p3    # "id":[I
    .restart local p4    # "X":[I
    .restart local p5    # "Y":[I
    :cond_0
    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 73
    .end local p1    # "action":I
    .end local p2    # "pointers":I
    .end local p3    # "id":[I
    .end local p4    # "X":[I
    .end local p5    # "Y":[I
    .restart local v3    # "action":I
    .restart local v4    # "pointers":I
    .restart local v5    # "id":[I
    .restart local v6    # "X":[I
    .restart local v7    # "Y":[I
    :goto_0
    if-nez v0, :cond_1

    .line 74
    const-string p1, "SemHiddenDisplayInputManager"

    const-string p2, "Hidden Display Input Manager didn\'t start"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    return-void
.end method
