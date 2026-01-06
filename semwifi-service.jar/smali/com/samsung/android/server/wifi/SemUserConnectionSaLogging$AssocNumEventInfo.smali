.class Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssocNumEventInfo"
.end annotation


# instance fields
.field private final mApName:Ljava/lang/String;

.field private final mAssocNum:I

.field private final mDisableReason:Ljava/lang/String;

.field private final mNetworkId:I

.field private final mProductModel:Ljava/lang/String;

.field private final mSsid:Ljava/lang/String;

.field private final mWifiFwVersion:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmApName(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mApName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAssocNum(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mAssocNum:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProductModel(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mProductModel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiFwVersion(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mWifiFwVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mNetworkId:I

    .line 4
    iput p2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mAssocNum:I

    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mDisableReason:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mSsid:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mApName:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mWifiFwVersion:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mProductModel:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AssocNumEventInfo{networkId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mNetworkId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", ssid="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mSsid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", assocNum="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mAssocNum:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", disableReason="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mDisableReason:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", apName="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mApName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", wifiFwVersion="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mWifiFwVersion:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", productModel="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$AssocNumEventInfo;->mProductModel:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 p0, 0x7d

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
