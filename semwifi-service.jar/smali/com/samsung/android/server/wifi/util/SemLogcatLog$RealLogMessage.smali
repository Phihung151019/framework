.class Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/util/SemLogcatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealLogMessage"
.end annotation


# instance fields
.field private final mFormat:Ljava/lang/String;

.field private final mLogLevel:I

.field private mNextFormatCharPos:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mLogLevel:I

    .line 4
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mTag:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private copyUntilPlaceholder()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v1, 0x25

    .line 15
    .line 16
    iget v2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    .line 34
    .line 35
    iget v3, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iput v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public c(C)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 10
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_0
    return-object p0
.end method

.method public c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 6
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 8
    iget p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 2
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_0
    return-object p0
.end method

.method public c(Z)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    .line 14
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    iget p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_0
    return-object p0
.end method

.method public flush()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    .line 14
    .line 15
    iget v2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mNextFormatCharPos:I

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mLogLevel:I

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mTag:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v0, v1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public r(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->c(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
