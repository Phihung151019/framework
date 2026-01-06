.class public final Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder$SingletonHolder;
    }
.end annotation


# instance fields
.field private volatile mAppId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->mAppId:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getAppId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->mAppId:I

    .line 2
    .line 3
    return p0
.end method

.method public final setAppId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAppIdHolder;->mAppId:I

    .line 2
    .line 3
    return-void
.end method
