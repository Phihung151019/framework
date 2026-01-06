.class public Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;
.super Ljava/lang/Object;
.source "SysinputHALCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SysinputHALCallback"

.field private static volatile uniqueInstance:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;


# instance fields
.field private rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

.field private final sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;)V
    .locals 1
    .param p1, "hal"    # Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 18
    return-void
.end method

.method public static getInstance(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;
    .locals 2
    .param p0, "hal"    # Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 21
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    return-object v0
.end method

.method public static setRawdataService(ILcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V
    .locals 1
    .param p0, "displayId"    # I
    .param p1, "rawdata"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 32
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    if-nez v0, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    aput-object p1, v0, p0

    .line 36
    return-void
.end method


# virtual methods
.method public onReportInformation(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->onReportInformation(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onReportInformationAidl(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 45
    const-string v0, "handedge"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->onReportInformation(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->onReportInformation(ILjava/lang/String;)V

    .line 54
    :cond_2
    return-void
.end method

.method public onReportRawData(IILjava/util/ArrayList;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 59
    .local v0, "intList":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 60
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput v2, v0, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->onReportRawData(I[I)V

    .line 64
    .end local v0    # "intList":[I
    :cond_1
    return-void
.end method

.method public onReportRawData(II[I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "count"    # I
    .param p3, "list"    # [I

    .line 67
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->rawdataServices:[Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->onReportRawData(I[I)V

    .line 70
    :cond_0
    return-void
.end method
