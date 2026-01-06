.class public final Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder$SingletonHolder;
    }
.end annotation


# instance fields
.field private volatile mContext:Landroid/content/Context;


# direct methods
.method public static getInstance()Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/common/ContinuityContextHolder;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    return-void
.end method
