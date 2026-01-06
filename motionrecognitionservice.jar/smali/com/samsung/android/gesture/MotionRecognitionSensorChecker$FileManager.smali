.class abstract Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FileManager;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FileManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 2238
    .local p0, "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FileManager;, "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FileManager<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2239
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FileManager;->mFilePath:Ljava/lang/String;

    .line 2240
    invoke-virtual {p0, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FileManager;->createFile(Ljava/lang/String;)V

    .line 2241
    return-void
.end method


# virtual methods
.method abstract createFile(Ljava/lang/String;)V
.end method

.method abstract readData(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method abstract writeData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
