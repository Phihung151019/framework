.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceData"
.end annotation


# instance fields
.field private mcfData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

.field private passwordCasterStartAt:J

.field private targetMcfDevice:Lcom/samsung/android/mcf/McfDevice;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;-><init>()V

    return-void
.end method


# virtual methods
.method getMcfData()Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->mcfData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 2
    .line 3
    return-object p0
.end method

.method getPasswordCasterStartAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->passwordCasterStartAt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method getTargetMcfDevice()Lcom/samsung/android/mcf/McfDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->targetMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->targetMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->mcfData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->passwordCasterStartAt:J

    .line 6
    .line 7
    return-void
.end method
