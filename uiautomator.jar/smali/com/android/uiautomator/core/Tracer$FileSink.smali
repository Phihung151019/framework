.class Lcom/android/uiautomator/core/Tracer$FileSink;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Lcom/android/uiautomator/core/Tracer$TracerSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileSink"
.end annotation


# instance fields
.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/core/Tracer;Ljava/io/File;)V
    .locals 2
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    .line 68
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 69
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 77
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s %s\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 73
    return-void
.end method
