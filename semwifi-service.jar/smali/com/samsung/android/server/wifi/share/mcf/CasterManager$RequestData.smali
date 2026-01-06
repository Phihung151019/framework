.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestData"
.end annotation


# instance fields
.field configKey:Ljava/lang/String;

.field contactKey:Ljava/lang/String;

.field mcfDevice:Lcom/samsung/android/mcf/McfDevice;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/McfDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->contactKey:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->configKey:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->mcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 9
    .line 10
    return-void
.end method
