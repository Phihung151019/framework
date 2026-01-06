.class Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Measurement"
.end annotation


# instance fields
.field private isPassive:Z

.field private isRunning:Z

.field private location:Landroid/location/Location;

.field private wifiConfigKey:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->isPassive:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->isRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->location:Landroid/location/Location;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->wifiConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->isPassive:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->isRunning:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Landroid/location/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->location:Landroid/location/Location;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->wifiConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;-><init>()V

    return-void
.end method
