.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageStats"
.end annotation


# instance fields
.field public clientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field public globalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$ClientDataUsageStats;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;->globalDataUsageStats:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$GlobalDataUsageStats;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf$DataUsageStats;->clientDataUsageStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method
