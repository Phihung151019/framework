.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityAbstractDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;
    }
.end annotation


# instance fields
.field private final mBtMac:Ljava/lang/String;

.field private final mModelName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;->mBtMac:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;->mModelName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getDeviceId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;->mBtMac:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final getModelName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;->mModelName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
