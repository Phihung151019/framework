.class public Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final COMPLETED:I = 0x2

.field public static final INITIAL:I = 0x0

.field public static final PROCESSING:I = 0x1


# instance fields
.field public mBtCoexMode:Ljava/lang/String;

.field public mCurrentApCu:Ljava/lang/String;

.field public mCurrentApRssi:Ljava/lang/String;

.field public mCurrentApScore:Ljava/lang/String;

.field public mCurrentBssid:Ljava/lang/String;

.field public mRoamReason:Ljava/lang/String;

.field public mRoamStartTime:Ljava/util/Date;

.field public mRoamedApCu:Ljava/lang/String;

.field public mRoamedApRssi:Ljava/lang/String;

.field public mRoamedApScore:Ljava/lang/String;

.field public mRoamedBssid:Ljava/lang/String;

.field public mRssiThreshold:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->clear()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentBssid:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedBssid:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamReason:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mBtCoexMode:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRssiThreshold:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApRssi:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApCu:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApScore:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApRssi:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApCu:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApScore:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->status:I

    .line 27
    .line 28
    return-void
.end method

.method public isCompleted()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->status:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public isProcessing()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->status:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public setStatusCompleted()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->status:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->status:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setStatusProcessing()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->status:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->status:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamStartTime:Ljava/util/Date;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "], mRoamReason: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamReason:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mBtCoexMode: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mBtCoexMode:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mRssiThreshold: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRssiThreshold:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", status: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->status:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mCurrentBssid: "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentBssid:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", RSSI: "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApRssi:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ", CU: "

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApCu:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, ", Score: "

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mCurrentApScore:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v4, ", mRoamedBssid: "

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v4, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedBssid:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApRssi:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApCu:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/roam/RoamScanSummary;->mRoamedApScore:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method
