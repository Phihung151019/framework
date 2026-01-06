.class public Lcom/samsung/vekit/Common/Object/KeyFrame;
.super Ljava/lang/Object;
.source "KeyFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

.field protected interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

.field private target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private time:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 1
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    .line 12
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->target:Ljava/lang/Object;

    .line 13
    iput-wide p2, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->time:J

    .line 14
    sget-object v0, Lcom/samsung/vekit/Common/Type/InterpolationType;->LINEAR:Lcom/samsung/vekit/Common/Type/InterpolationType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JLcom/samsung/vekit/Common/Type/InterpolationType;)V
    .locals 1
    .param p2, "time"    # J
    .param p4, "interpolationType"    # Lcom/samsung/vekit/Common/Type/InterpolationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lcom/samsung/vekit/Common/Type/InterpolationType;",
            ")V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    .line 18
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->target:Ljava/lang/Object;

    .line 19
    iput-wide p2, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->time:J

    .line 20
    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JLcom/samsung/vekit/Common/Type/InterpolationType;Lcom/samsung/vekit/Common/Object/BezierControlPoint;)V
    .locals 1
    .param p2, "time"    # J
    .param p4, "interpolationType"    # Lcom/samsung/vekit/Common/Type/InterpolationType;
    .param p5, "bezierControlPoint"    # Lcom/samsung/vekit/Common/Object/BezierControlPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lcom/samsung/vekit/Common/Type/InterpolationType;",
            "Lcom/samsung/vekit/Common/Object/BezierControlPoint;",
            ")V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    .line 24
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->target:Ljava/lang/Object;

    .line 25
    iput-wide p2, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->time:J

    .line 26
    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    .line 27
    iput-object p5, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    .local p1, "from":Ljava/lang/Object;, "TT;"
    .local p2, "to":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLcom/samsung/vekit/Common/Type/InterpolationType;)V
    .locals 1
    .param p3, "duration"    # J
    .param p5, "interpolationType"    # Lcom/samsung/vekit/Common/Type/InterpolationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J",
            "Lcom/samsung/vekit/Common/Type/InterpolationType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    .local p1, "from":Ljava/lang/Object;, "TT;"
    .local p2, "to":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLcom/samsung/vekit/Common/Type/InterpolationType;Lcom/samsung/vekit/Common/Object/BezierControlPoint;)V
    .locals 1
    .param p3, "duration"    # J
    .param p5, "interpolationType"    # Lcom/samsung/vekit/Common/Type/InterpolationType;
    .param p6, "bezierControlPoint"    # Lcom/samsung/vekit/Common/Object/BezierControlPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J",
            "Lcom/samsung/vekit/Common/Type/InterpolationType;",
            "Lcom/samsung/vekit/Common/Object/BezierControlPoint;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    .local p1, "from":Ljava/lang/Object;, "TT;"
    .local p2, "to":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    .line 72
    return-void
.end method


# virtual methods
.method public getBezierControlPoint()Lcom/samsung/vekit/Common/Object/BezierControlPoint;
    .locals 1

    .line 43
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    return-object v0
.end method

.method public getDuration()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInterpolationType()Lcom/samsung/vekit/Common/Type/InterpolationType;
    .locals 1

    .line 35
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 55
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->time:J

    return-wide v0
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

    .line 80
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBezierControlPoint(FFFF)V
    .locals 1
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F

    .line 39
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;->setValues(FFFF)V

    .line 40
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    return-void
.end method

.method public setFrom(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    .local p1, "from":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public setInterpolationType(Lcom/samsung/vekit/Common/Type/InterpolationType;)V
    .locals 0
    .param p1, "interpolationType"    # Lcom/samsung/vekit/Common/Type/InterpolationType;

    .line 31
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    .line 32
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->target:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 59
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->time:J

    .line 60
    return-void
.end method

.method public setTo(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    .local p0, "this":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<TT;>;"
    .local p1, "to":Ljava/lang/Object;, "TT;"
    return-void
.end method
