.class Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Iface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface$IfaceType;
    }
.end annotation


# static fields
.field public static final IFACE_TYPE_AP:I = 0x0

.field public static final IFACE_TYPE_STA_FOR_CONNECTIVITY:I = 0x1

.field public static final IFACE_TYPE_STA_FOR_SCAN:I = 0x2


# instance fields
.field public externalListener:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;

.field public final id:I

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->id:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->type:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Iface:{Name="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->type:I

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    const-string v1, "<UNKNOWN>"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "STA_SCAN"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string v1, "STA_CONNECTIVITY"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const-string v1, "AP"

    .line 28
    .line 29
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ",Id="

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->id:I

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, ",Type="

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p0, "}"

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method
