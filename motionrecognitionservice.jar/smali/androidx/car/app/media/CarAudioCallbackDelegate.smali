.class public Landroidx/car/app/media/CarAudioCallbackDelegate;
.super Ljava/lang/Object;
.source "CarAudioCallbackDelegate.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/media/CarAudioCallbackDelegate$CarAudioCallbackStub;
    }
.end annotation


# instance fields
.field private final mCallback:Landroidx/car/app/media/ICarAudioCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/media/CarAudioCallbackDelegate;->mCallback:Landroidx/car/app/media/ICarAudioCallback;

    .line 68
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/media/CarAudioCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/media/CarAudioCallback;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroidx/car/app/media/CarAudioCallbackDelegate$CarAudioCallbackStub;

    invoke-direct {v0, p1}, Landroidx/car/app/media/CarAudioCallbackDelegate$CarAudioCallbackStub;-><init>(Landroidx/car/app/media/CarAudioCallback;)V

    iput-object v0, p0, Landroidx/car/app/media/CarAudioCallbackDelegate;->mCallback:Landroidx/car/app/media/ICarAudioCallback;

    .line 63
    return-void
.end method

.method static create(Landroidx/car/app/media/CarAudioCallback;)Landroidx/car/app/media/CarAudioCallbackDelegate;
    .locals 1
    .param p0, "callback"    # Landroidx/car/app/media/CarAudioCallback;

    .line 58
    new-instance v0, Landroidx/car/app/media/CarAudioCallbackDelegate;

    invoke-direct {v0, p0}, Landroidx/car/app/media/CarAudioCallbackDelegate;-><init>(Landroidx/car/app/media/CarAudioCallback;)V

    return-object v0
.end method


# virtual methods
.method public onStopRecording()V
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/media/CarAudioCallbackDelegate;->mCallback:Landroidx/car/app/media/ICarAudioCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/media/ICarAudioCallback;

    invoke-interface {v0}, Landroidx/car/app/media/ICarAudioCallback;->onStopRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    nop

    .line 52
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
