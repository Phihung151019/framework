.class public final Landroidx/car/app/media/OpenMicrophoneRequest;
.super Ljava/lang/Object;
.source "OpenMicrophoneRequest.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/media/OpenMicrophoneRequest$Builder;
    }
.end annotation


# instance fields
.field private final mCarAudioCallbackDelegate:Landroidx/car/app/media/CarAudioCallbackDelegate;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/media/OpenMicrophoneRequest;->mCarAudioCallbackDelegate:Landroidx/car/app/media/CarAudioCallbackDelegate;

    .line 49
    return-void
.end method

.method constructor <init>(Landroidx/car/app/media/OpenMicrophoneRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/media/OpenMicrophoneRequest$Builder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object v0, p1, Landroidx/car/app/media/OpenMicrophoneRequest$Builder;->mCarAudioCallbackDelegate:Landroidx/car/app/media/CarAudioCallbackDelegate;

    iput-object v0, p0, Landroidx/car/app/media/OpenMicrophoneRequest;->mCarAudioCallbackDelegate:Landroidx/car/app/media/CarAudioCallbackDelegate;

    .line 44
    return-void
.end method


# virtual methods
.method public getCarAudioCallbackDelegate()Landroidx/car/app/media/CarAudioCallbackDelegate;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/car/app/media/OpenMicrophoneRequest;->mCarAudioCallbackDelegate:Landroidx/car/app/media/CarAudioCallbackDelegate;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/media/CarAudioCallbackDelegate;

    return-object v0
.end method
