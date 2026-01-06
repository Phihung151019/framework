.class public final Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
.super Ljava/lang/Object;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallBarringInfo"
.end annotation


# static fields
.field private static final KEY_NUMBER:Ljava/lang/String; = "icbnumber"

.field private static final KEY_STATUS:Ljava/lang/String; = "barringEnabled"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final TIME_FORMAT:Ljava/lang/String; = "\'DBL\'yyyy-MM-dd\'T\'HH-mm-ss\'Z\'"


# instance fields
.field public barringEnabled:Z

.field public number:Ljava/lang/String;

.field public time:J


# direct methods
.method static bridge synthetic -$$Nest$mgetFormattedTime(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->getFormattedTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1880
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "formattedTime"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "barringEnabled"    # Z

    .line 1882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1883
    invoke-static {p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->parseFormattedTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->time:J

    .line 1884
    iput-object p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->number:Ljava/lang/String;

    .line 1885
    iput-boolean p3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->barringEnabled:Z

    .line 1886
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private getFormattedTime()Ljava/lang/String;
    .locals 5

    .line 1907
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'DBL\'yyyy-MM-dd\'T\'HH-mm-ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1908
    .local v0, "utcFormat":Ljava/text/DateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1909
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1910
    .local v1, "formattedTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallBarringInfo time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", formatted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelephoneSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    return-object v1
.end method

.method private static parseFormattedTime(Ljava/lang/String;)J
    .locals 6
    .param p0, "formattedTime"    # Ljava/lang/String;

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallBarringInfo formattedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTelephoneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1893
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "\'DBL\'yyyy-MM-dd\'T\'HH-mm-ss\'Z\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1894
    .local v0, "utcFormat":Ljava/text/DateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1898
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    .local v2, "time":J
    goto :goto_0

    .line 1899
    .end local v2    # "time":J
    :catch_0
    move-exception v2

    .line 1900
    .local v2, "e":Ljava/text/ParseException;
    const-wide/16 v3, 0x0

    move-wide v2, v3

    .line 1902
    .local v2, "time":J
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallBarringInfo time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    return-wide v2
.end method
