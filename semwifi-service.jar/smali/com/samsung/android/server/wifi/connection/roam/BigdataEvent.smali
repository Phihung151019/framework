.class public Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final ID_BAND_PRIORITY:I = 0x2

.field public static final ID_END:I = 0x5

.field public static final ID_INVALID:I = 0x0

.field public static final ID_LOW_RSSI_LOGIC:I = 0x3

.field public static final ID_PERIODIC_SCAN:I = 0x4

.field public static final ID_ROAM_TRIGGER:I = 0x1


# instance fields
.field public final dimensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->id:I

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/roam/BigdataEvent;->dimensions:Ljava/util/HashMap;

    .line 12
    .line 13
    return-void
.end method
