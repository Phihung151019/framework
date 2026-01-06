.class public Lcom/samsung/android/server/wifi/wcm/IccManager$HandlerMessage;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/IccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerMessage"
.end annotation


# static fields
.field public static final EVENT_DISABLE_NETWORK_TIMEOUT:I = 0xb

.field public static final EVENT_ICC_INFERENCE_SERVICE_BIND:I = 0x4

.field public static final EVENT_ICC_TRAIN_SERVICE_BIND:I = 0x3

.field public static final EVENT_INFERENCE_SERVICE_KILL:I = 0x6

.field public static final EVENT_INVALID_WIFI:I = 0xe

.field public static final EVENT_SAVED_NETWORK_REMOVED:I = 0xc

.field public static final EVENT_SAVE_DATA:I = 0x1

.field public static final EVENT_TRAIN_SERVICE_KILL:I = 0x5

.field public static final EVENT_WIFI_CONNECTED:I = 0x8

.field public static final EVENT_WIFI_CONNECTION_TIMEOUT:I = 0xd

.field public static final EVENT_WIFI_DISCONNECTED:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
