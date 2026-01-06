.class Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData$DumpsysData;
.super Ljava/lang/Object;
.source "SemInputDumpsysData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DumpsysData"
.end annotation


# instance fields
.field private final data:Ljava/lang/StringBuilder;

.field private final startTime:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData$DumpsysData;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData$DumpsysData;->data:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData$DumpsysData;->data:Ljava/lang/StringBuilder;

    .line 31
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData$DumpsysData;->startTime:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData$DumpsysData;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData$DumpsysData;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
