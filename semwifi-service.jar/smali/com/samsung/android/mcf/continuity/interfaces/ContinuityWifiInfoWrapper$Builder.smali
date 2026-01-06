.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFrequency:I

.field private final mStatus:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mFrequency:I

    .line 6
    .line 7
    iput p2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mStatus:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mStatus:I

    .line 2
    .line 3
    const/16 v1, 0x6e

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mFrequency:I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "invalid frequency"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_0
    new-instance p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final setFrequency(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->mFrequency:I

    .line 2
    .line 3
    return-void
.end method
