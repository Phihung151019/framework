.class public abstract Lcom/android/media/remotedisplay/RemoteDisplayProvider;
.super Ljava/lang/Object;
.source "RemoteDisplayProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;,
        Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;
    }
.end annotation


# static fields
.field public static final DISCOVERY_MODE_ACTIVE:I = 0x2

.field public static final DISCOVERY_MODE_NONE:I = 0x0

.field public static final DISCOVERY_MODE_PASSIVE:I = 0x1

.field private static final MSG_ADJUST_VOLUME:I = 0x6

.field private static final MSG_CONNECT:I = 0x3

.field private static final MSG_DISCONNECT:I = 0x4

.field private static final MSG_SET_CALLBACK:I = 0x1

.field private static final MSG_SET_DISCOVERY_MODE:I = 0x2

.field private static final MSG_SET_VOLUME:I = 0x5

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.android.media.remotedisplay.RemoteDisplayProvider"


# instance fields
.field private mCallback:Landroid/media/IRemoteDisplayCallback;

.field private final mContext:Landroid/content/Context;

.field private mDiscoveryMode:I

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/media/remotedisplay/RemoteDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

.field private mSettingsPendingIntent:Landroid/app/PendingIntent;

.field private final mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    .line 152
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    .line 153
    new-instance v0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    invoke-direct {v0, p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;-><init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    .line 154
    new-instance v0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;-><init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    .line 155
    return-void
.end method


# virtual methods
.method public addDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 4
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 245
    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "displayId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 254
    return-void

    .line 250
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display already exists with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    .end local v0    # "displayId":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/media/remotedisplay/RemoteDisplay;

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDiscoveryMode()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    return v0
.end method

.method public getDisplays()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/media/remotedisplay/RemoteDisplay;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "settingsIntent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 317
    .end local v0    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public onAdjustVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;
    .param p2, "delta"    # I

    .line 217
    return-void
.end method

.method public onConnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 191
    return-void
.end method

.method public onDisconnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 199
    return-void
.end method

.method public onDiscoveryModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 183
    return-void
.end method

.method public onSetVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;
    .param p2, "volume"    # I

    .line 208
    return-void
.end method

.method publishState()V
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    if-eqz v0, :cond_1

    .line 334
    new-instance v0, Landroid/media/RemoteDisplayState;

    invoke-direct {v0}, Landroid/media/RemoteDisplayState;-><init>()V

    .line 335
    .local v0, "state":Landroid/media/RemoteDisplayState;
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 336
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 337
    iget-object v3, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 338
    .local v3, "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    iget-object v4, v0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/media/remotedisplay/RemoteDisplay;->getInfo()Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v3    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "i":I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    invoke-interface {v2, v0}, Landroid/media/IRemoteDisplayCallback;->onStateChanged(Landroid/media/RemoteDisplayState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_1

    .line 342
    :catch_0
    move-exception v2

    .line 346
    .end local v0    # "state":Landroid/media/RemoteDisplayState;
    .end local v1    # "count":I
    :cond_1
    :goto_1
    return-void
.end method

.method public removeDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 4
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 282
    if-eqz p1, :cond_1

    .line 285
    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "displayId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 291
    return-void

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected display with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    .end local v0    # "displayId":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCallback(Landroid/media/IRemoteDisplayCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/IRemoteDisplayCallback;

    .line 321
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    .line 322
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 323
    return-void
.end method

.method setDiscoveryMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 326
    iget v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    if-eq v0, p1, :cond_0

    .line 327
    iput p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onDiscoveryModeChanged(I)V

    .line 330
    :cond_0
    return-void
.end method

.method public updateDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 4
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 264
    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "displayId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 272
    return-void

    .line 269
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected display with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    .end local v0    # "displayId":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
