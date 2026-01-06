.class public Lcom/samsung/android/mcf/discovery/McfScanData;
.super Ljava/lang/Object;
.source "McfScanData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    }
.end annotation


# static fields
.field public static final CONTENTS_FILTER_ALL:I = 0x0

.field public static final CONTENTS_FILTER_BYTE:I = 0x1

.field public static final CONTENTS_FILTER_JSON:I = 0x2

.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final INFINITE_TIMEOUT:I = 0x0

.field private static final KEY_CONTENTS_FILTER:Ljava/lang/String; = "contentsFilter"

.field private static final KEY_REPORT_TYPE:Ljava/lang/String; = "reportType"

.field private static final KEY_SCAN_MODE:Ljava/lang/String; = "scanMode"

.field private static final KEY_SCREEN_OFF_SCAN:Ljava/lang/String; = "screenOffScan"

.field private static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field private static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final MAX_TIMEOUT:I = 0x36ee80

.field public static final MODE_BALANCED:I = 0x2

.field public static final MODE_LOW_LATENCY:I = 0x3

.field public static final MODE_LOW_POWER:I = 0x0

.field public static final MODE_NO_SCAN:I = -0x1

.field public static final REPORT_TYPE_ALWAYS:I = 0x1

.field public static final REPORT_TYPE_DATA_CHANGED:I


# instance fields
.field private final bleSID:I

.field private final contentsFilter:I

.field private final needScreenOffScan:Z

.field private final reportType:I

.field private scanMode:I

.field private timeout:I


# direct methods
.method public constructor <init>(IIZIII)V
    .locals 0
    .param p1, "bleSID"    # I
    .param p2, "scanMode"    # I
    .param p3, "needScreenOffScan"    # Z
    .param p4, "reportType"    # I
    .param p5, "timeout"    # I
    .param p6, "contentsFilter"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    .line 117
    iput p2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    .line 118
    iput-boolean p3, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    .line 119
    iput p4, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    .line 120
    iput p5, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    .line 121
    iput p6, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    .line 126
    const-string v0, "scanMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    .line 127
    const-string v0, "screenOffScan"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    .line 128
    const-string v0, "reportType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    .line 129
    const-string v0, "timeout"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    .line 130
    const-string v0, "contentsFilter"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "scanMode"    # I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    .line 135
    iput p2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    .line 136
    const-string v0, "screenOffScan"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    .line 137
    iput v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    .line 138
    iput v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    .line 139
    iput v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    .line 140
    return-void
.end method


# virtual methods
.method public getBleSID()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "serviceID"

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v1, "scanMode"

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string v1, "screenOffScan"

    iget-boolean v2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v1, "reportType"

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string v1, "timeout"

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v1, "contentsFilter"

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    return-object v0
.end method

.method public getContentsFilter()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    return v0
.end method

.method public getReportType()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    return v0
.end method

.method public getScanMode()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    return v0
.end method

.method public isNeedScreenOffScan()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    return v0
.end method

.method public setScanMode(I)V
    .locals 0
    .param p1, "scanMode"    # I

    .line 86
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    .line 87
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 109
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    return-object v0
.end method
