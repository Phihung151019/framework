.class public abstract Landroidx/car/app/media/CarAudioRecord;
.super Ljava/lang/Object;
.source "CarAudioRecord.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation


# static fields
.field public static final AUDIO_CONTENT_BUFFER_SIZE:I = 0x200

.field public static final AUDIO_CONTENT_MIME:Ljava/lang/String; = "audio/l16"

.field public static final AUDIO_CONTENT_SAMPLING_RATE:I = 0x3e80

.field private static final RECORDSTATE_RECORDING:I = 0x1

.field private static final RECORDSTATE_REMOTE_CLOSED:I = 0x2

.field private static final RECORDSTATE_STOPPED:I


# instance fields
.field private final mCarContext:Landroidx/car/app/CarContext;

.field private mOpenMicrophoneResponse:Landroidx/car/app/media/OpenMicrophoneResponse;

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroidx/car/app/CarContext;)V
    .locals 1
    .param p1, "carContext"    # Landroidx/car/app/CarContext;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingState:I

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 178
    iput-object p1, p0, Landroidx/car/app/media/CarAudioRecord;->mCarContext:Landroidx/car/app/CarContext;

    .line 179
    return-void
.end method

.method public static create(Landroidx/car/app/CarContext;)Landroidx/car/app/media/CarAudioRecord;
    .locals 1
    .param p0, "carContext"    # Landroidx/car/app/CarContext;

    .line 158
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/car/app/utils/CommonUtils;->isAutomotiveOS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "androidx.car.app.media.AutomotiveCarAudioRecord"

    goto :goto_0

    .line 160
    :cond_0
    const-string v0, "androidx.car.app.media.ProjectedCarAudioRecord"

    .line 158
    :goto_0
    invoke-static {p0, v0}, Landroidx/car/app/media/CarAudioRecord;->createCarAudioRecord(Landroidx/car/app/CarContext;Ljava/lang/String;)Landroidx/car/app/media/CarAudioRecord;

    move-result-object v0

    return-object v0
.end method

.method private static createCarAudioRecord(Landroidx/car/app/CarContext;Ljava/lang/String;)Landroidx/car/app/media/CarAudioRecord;
    .locals 4
    .param p0, "carContext"    # Landroidx/car/app/CarContext;
    .param p1, "className"    # Ljava/lang/String;

    .line 167
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 168
    .local v0, "managerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroidx/car/app/CarContext;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 169
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/media/CarAudioRecord;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 170
    .end local v0    # "managerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CarAudioRecord not configured. Did you forget to add a dependency on app-automotive or app-projected artifacts?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$startRecording$1()V
    .locals 0

    .line 205
    return-void
.end method


# virtual methods
.method synthetic lambda$startRecording$0$androidx-car-app-media-CarAudioRecord()V
    .locals 2

    .line 198
    iget-object v0, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingState:I

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([BII)I
    .locals 3
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .line 243
    iget-object v0, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget v1, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingState:I

    packed-switch v1, :pswitch_data_0

    .line 255
    :pswitch_0
    monitor-exit v0

    goto :goto_0

    .line 250
    :pswitch_1
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 246
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called read before calling startRecording or after calling stopRecording"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroidx/car/app/media/CarAudioRecord;
    .end local p1    # "audioData":[B
    .end local p2    # "offsetInBytes":I
    .end local p3    # "sizeInBytes":I
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .restart local p0    # "this":Landroidx/car/app/media/CarAudioRecord;
    .restart local p1    # "audioData":[B
    .restart local p2    # "offsetInBytes":I
    .restart local p3    # "sizeInBytes":I
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/car/app/media/CarAudioRecord;->readInternal([BII)I

    move-result v0

    return v0

    .line 255
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract readInternal([BII)I
.end method

.method public startRecording()V
    .locals 4

    .line 189
    iget-object v0, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget v1, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingState:I

    if-nez v1, :cond_1

    .line 195
    iget-object v1, p0, Landroidx/car/app/media/CarAudioRecord;->mCarContext:Landroidx/car/app/CarContext;

    const-class v2, Landroidx/car/app/AppManager;

    .line 196
    invoke-virtual {v1, v2}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/AppManager;

    new-instance v2, Landroidx/car/app/media/OpenMicrophoneRequest$Builder;

    new-instance v3, Landroidx/car/app/media/CarAudioRecord$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroidx/car/app/media/CarAudioRecord$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/media/CarAudioRecord;)V

    invoke-direct {v2, v3}, Landroidx/car/app/media/OpenMicrophoneRequest$Builder;-><init>(Landroidx/car/app/media/CarAudioCallback;)V

    .line 201
    invoke-virtual {v2}, Landroidx/car/app/media/OpenMicrophoneRequest$Builder;->build()Landroidx/car/app/media/OpenMicrophoneRequest;

    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Landroidx/car/app/AppManager;->openMicrophone(Landroidx/car/app/media/OpenMicrophoneRequest;)Landroidx/car/app/media/OpenMicrophoneResponse;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/media/CarAudioRecord;->mOpenMicrophoneResponse:Landroidx/car/app/media/OpenMicrophoneResponse;

    .line 202
    iget-object v1, p0, Landroidx/car/app/media/CarAudioRecord;->mOpenMicrophoneResponse:Landroidx/car/app/media/OpenMicrophoneResponse;

    if-nez v1, :cond_0

    .line 203
    const-string v1, "CarApp"

    const-string v2, "Did not get microphone input from host"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v1, Landroidx/car/app/media/OpenMicrophoneResponse$Builder;

    new-instance v2, Landroidx/car/app/media/CarAudioRecord$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroidx/car/app/media/CarAudioRecord$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2}, Landroidx/car/app/media/OpenMicrophoneResponse$Builder;-><init>(Landroidx/car/app/media/CarAudioCallback;)V

    .line 205
    invoke-virtual {v1}, Landroidx/car/app/media/OpenMicrophoneResponse$Builder;->build()Landroidx/car/app/media/OpenMicrophoneResponse;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/media/CarAudioRecord;->mOpenMicrophoneResponse:Landroidx/car/app/media/OpenMicrophoneResponse;

    .line 207
    :cond_0
    iget-object v1, p0, Landroidx/car/app/media/CarAudioRecord;->mOpenMicrophoneResponse:Landroidx/car/app/media/OpenMicrophoneResponse;

    invoke-virtual {p0, v1}, Landroidx/car/app/media/CarAudioRecord;->startRecordingInternal(Landroidx/car/app/media/OpenMicrophoneResponse;)V

    .line 209
    const/4 v1, 0x1

    iput v1, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingState:I

    .line 210
    monitor-exit v0

    .line 211
    return-void

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot start recording if it has started and not been stopped"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroidx/car/app/media/CarAudioRecord;
    throw v1

    .line 210
    .restart local p0    # "this":Landroidx/car/app/media/CarAudioRecord;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract startRecordingInternal(Landroidx/car/app/media/OpenMicrophoneResponse;)V
.end method

.method public stopRecording()V
    .locals 3

    .line 215
    iget-object v0, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Landroidx/car/app/media/CarAudioRecord;->mOpenMicrophoneResponse:Landroidx/car/app/media/OpenMicrophoneResponse;

    if-eqz v1, :cond_1

    .line 217
    iget v1, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 219
    iget-object v1, p0, Landroidx/car/app/media/CarAudioRecord;->mOpenMicrophoneResponse:Landroidx/car/app/media/OpenMicrophoneResponse;

    invoke-virtual {v1}, Landroidx/car/app/media/OpenMicrophoneResponse;->getCarAudioCallback()Landroidx/car/app/media/CarAudioCallbackDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/car/app/media/CarAudioCallbackDelegate;->onStopRecording()V

    .line 221
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/car/app/media/CarAudioRecord;->mOpenMicrophoneResponse:Landroidx/car/app/media/OpenMicrophoneResponse;

    .line 224
    :cond_1
    invoke-virtual {p0}, Landroidx/car/app/media/CarAudioRecord;->stopRecordingInternal()V

    .line 225
    const/4 v1, 0x0

    iput v1, p0, Landroidx/car/app/media/CarAudioRecord;->mRecordingState:I

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract stopRecordingInternal()V
.end method
