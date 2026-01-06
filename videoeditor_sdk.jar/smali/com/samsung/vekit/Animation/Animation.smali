.class public abstract Lcom/samsung/vekit/Animation/Animation;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Animation.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/AnimationStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Animation/Animation$AnimationStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/vekit/Common/Object/Element;",
        "Lcom/samsung/vekit/Listener/AnimationStatusListener;"
    }
.end annotation


# instance fields
.field protected animationType:Lcom/samsung/vekit/Common/Type/AnimationType;

.field protected duration:J

.field protected enableRollback:Z

.field protected firstTarget:Lcom/samsung/vekit/Common/Object/Element;

.field protected fromLoop:I

.field protected keyFrameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

.field protected repeatCount:I

.field protected rollbackValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected startTime:J

.field protected toLoop:I


# direct methods
.method protected constructor <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "type"    # Lcom/samsung/vekit/Common/Type/AnimationType;
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 45
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ANIMATION:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0, p2}, Lcom/samsung/vekit/Animation/Animation;->setAnimationType(Lcom/samsung/vekit/Common/Type/AnimationType;)V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->startTime:J

    .line 48
    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Animation/Animation;->fromLoop:I

    .line 50
    iput v0, p0, Lcom/samsung/vekit/Animation/Animation;->toLoop:I

    .line 51
    iput v0, p0, Lcom/samsung/vekit/Animation/Animation;->repeatCount:I

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/vekit/Animation/Animation;->rollbackValue:Ljava/lang/Object;

    .line 53
    iput-boolean v0, p0, Lcom/samsung/vekit/Animation/Animation;->enableRollback:Z

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private calculateDuration()V
    .locals 7

    .line 176
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    .line 178
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyFrame size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 183
    .local v0, "size":I
    iget-wide v1, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    iget-object v3, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/vekit/Common/Object/KeyFrame;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/vekit/Common/Object/KeyFrame;

    invoke-virtual {v5}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    .line 186
    iget v1, p0, Lcom/samsung/vekit/Animation/Animation;->repeatCount:I

    if-nez v1, :cond_1

    .line 187
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/vekit/Animation/Animation;->toLoop:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/KeyFrame;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/vekit/Animation/Animation;->fromLoop:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/vekit/Common/Object/KeyFrame;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/samsung/vekit/Animation/Animation;->repeatCount:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    .line 189
    .local v1, "repeatDuration":J
    iget-wide v3, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    .line 190
    return-void
.end method

.method static synthetic lambda$sortKeyFrameList$0(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)I
    .locals 4
    .param p0, "prev"    # Lcom/samsung/vekit/Common/Object/KeyFrame;
    .param p1, "next"    # Lcom/samsung/vekit/Common/Object/KeyFrame;

    .line 273
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 274
    const/4 v0, 0x1

    return v0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 276
    const/4 v0, -0x1

    return v0

    .line 278
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private sortKeyFrameList()V
    .locals 2

    .line 272
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/vekit/Animation/Animation$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/vekit/Animation/Animation$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 280
    return-void
.end method


# virtual methods
.method public addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "keyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->sortKeyFrameList()V

    .line 232
    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    .line 233
    return-object p0
.end method

.method public clearKeyFrameList()V
    .locals 2

    .line 262
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    .line 264
    return-void
.end method

.method public getAnimationType()Lcom/samsung/vekit/Common/Type/AnimationType;
    .locals 1

    .line 103
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->animationType:Lcom/samsung/vekit/Common/Type/AnimationType;

    return-object v0
.end method

.method public getBezierControlPoint()Lcom/samsung/vekit/Common/Object/BezierControlPoint;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 120
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    return-wide v0
.end method

.method public getFirstKeyFrame()Lcom/samsung/vekit/Common/Object/KeyFrame;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyFrame size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/KeyFrame;

    return-object v0
.end method

.method public getFrom()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLoop()I
    .locals 1

    .line 164
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget v0, p0, Lcom/samsung/vekit/Animation/Animation;->fromLoop:I

    return v0
.end method

.method public getInterpolationType()Lcom/samsung/vekit/Common/Type/InterpolationType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyFrameCount()I
    .locals 1

    .line 267
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getKeyFrameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;>;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastKeyFrame()Lcom/samsung/vekit/Common/Object/KeyFrame;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    .local v0, "size":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid KeyFrame size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v1, 0x0

    return-object v1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/KeyFrame;

    return-object v1
.end method

.method public getRepeatCount()I
    .locals 1

    .line 172
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget v0, p0, Lcom/samsung/vekit/Animation/Animation;->repeatCount:I

    return v0
.end method

.method public getRollbackValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->rollbackValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 111
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->startTime:J

    return-wide v0
.end method

.method public getTarget()Lcom/samsung/vekit/Common/Object/Element;
    .locals 1

    .line 76
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    return-object v0
.end method

.method public getTo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToLoop()I
    .locals 1

    .line 168
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget v0, p0, Lcom/samsung/vekit/Animation/Animation;->toLoop:I

    return v0
.end method

.method public isEnableRollback()Z
    .locals 1

    .line 65
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/vekit/Animation/Animation;->enableRollback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimationCanceled(Ljava/lang/Object;)V
    .locals 1
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 146
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationCanceled(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .locals 1
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 139
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationFinished(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .locals 1
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 125
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationStarted(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .locals 1
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 132
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationUpdated(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public removeKeyFrame(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 247
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyFrame size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x0

    return v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 252
    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public removeKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;)Z"
        }
    .end annotation

    .line 237
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "keyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyFrame size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    return v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public rollback()V
    .locals 0

    .line 73
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    return-void
.end method

.method protected setAnimationType(Lcom/samsung/vekit/Common/Type/AnimationType;)V
    .locals 0
    .param p1, "animationType"    # Lcom/samsung/vekit/Common/Type/AnimationType;

    .line 107
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->animationType:Lcom/samsung/vekit/Common/Type/AnimationType;

    .line 108
    return-void
.end method

.method public setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .locals 2
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/KeyFrame;

    .line 97
    .local v1, "data":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/vekit/Common/Object/KeyFrame;->setBezierControlPoint(FFFF)V

    .line 98
    .end local v1    # "data":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    goto :goto_0

    .line 99
    :cond_0
    return-object p0
.end method

.method public setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .param p1, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    return-object p0
.end method

.method public setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "from":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method public setInterpolationType(Lcom/samsung/vekit/Common/Type/InterpolationType;)Lcom/samsung/vekit/Animation/Animation;
    .locals 2
    .param p1, "interpolationType"    # Lcom/samsung/vekit/Common/Type/InterpolationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Type/InterpolationType;",
            ")",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/KeyFrame;

    .line 90
    .local v1, "data":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    invoke-virtual {v1, p1}, Lcom/samsung/vekit/Common/Object/KeyFrame;->setInterpolationType(Lcom/samsung/vekit/Common/Type/InterpolationType;)V

    .line 91
    .end local v1    # "data":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    goto :goto_0

    .line 92
    :cond_0
    return-object p0
.end method

.method public setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "keyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    return-object p0
.end method

.method public setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 220
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "firstKeyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    .local p2, "secondKeyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->sortKeyFrameList()V

    .line 224
    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    .line 225
    return-object p0
.end method

.method public setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;>;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->sortKeyFrameList()V

    .line 214
    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    .line 215
    return-object p0
.end method

.method public setListener(Lcom/samsung/vekit/Listener/AnimationStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/vekit/Listener/AnimationStatusListener;

    .line 85
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    .line 86
    return-void
.end method

.method public setRepeat(III)Lcom/samsung/vekit/Animation/Animation;
    .locals 1
    .param p1, "fromLoop"    # I
    .param p2, "toLoop"    # I
    .param p3, "repeatCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Animation/Animation;->fromLoop:I

    .line 157
    invoke-virtual {p0}, Lcom/samsung/vekit/Animation/Animation;->getKeyFrameCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Animation/Animation;->toLoop:I

    .line 158
    iput p3, p0, Lcom/samsung/vekit/Animation/Animation;->repeatCount:I

    .line 159
    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    .line 160
    return-object p0
.end method

.method public setRollbackValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Animation/Animation;->enableRollback:Z

    .line 61
    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->rollbackValue:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .param p1, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iput-wide p1, p0, Lcom/samsung/vekit/Animation/Animation;->startTime:J

    .line 116
    return-object p0
.end method

.method public setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .param p1, "target"    # Lcom/samsung/vekit/Common/Object/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            ")",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    .line 81
    return-object p0
.end method

.method public setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    .local p1, "to":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method public updateTargetValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 153
    .local p0, "this":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<TT;>;"
    return-void
.end method
