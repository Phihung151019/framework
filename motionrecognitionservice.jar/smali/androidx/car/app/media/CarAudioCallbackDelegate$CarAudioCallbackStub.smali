.class Landroidx/car/app/media/CarAudioCallbackDelegate$CarAudioCallbackStub;
.super Landroidx/car/app/media/ICarAudioCallback$Stub;
.source "CarAudioCallbackDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/media/CarAudioCallbackDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarAudioCallbackStub"
.end annotation


# instance fields
.field private final mCarAudioCallback:Landroidx/car/app/media/CarAudioCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroidx/car/app/media/ICarAudioCallback$Stub;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/media/CarAudioCallbackDelegate$CarAudioCallbackStub;->mCarAudioCallback:Landroidx/car/app/media/CarAudioCallback;

    .line 83
    return-void
.end method

.method constructor <init>(Landroidx/car/app/media/CarAudioCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/car/app/media/CarAudioCallback;

    .line 76
    invoke-direct {p0}, Landroidx/car/app/media/ICarAudioCallback$Stub;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/car/app/media/CarAudioCallbackDelegate$CarAudioCallbackStub;->mCarAudioCallback:Landroidx/car/app/media/CarAudioCallback;

    .line 78
    return-void
.end method


# virtual methods
.method public onStopRecording()V
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/car/app/media/CarAudioCallbackDelegate$CarAudioCallbackStub;->mCarAudioCallback:Landroidx/car/app/media/CarAudioCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/media/CarAudioCallback;

    invoke-interface {v0}, Landroidx/car/app/media/CarAudioCallback;->onStopRecording()V

    .line 88
    return-void
.end method
