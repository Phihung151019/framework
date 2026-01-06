.class Lcom/samsung/android/hardware/context/SemContextProvider;
.super Ljava/lang/Object;
.source "SemContextProvider.java"


# static fields
.field private static final FEATURE_UNKNOWN:I = 0x0

.field private static final LIBRARY_NO_PARSER_BASE:I = 0x67

.field private static final LIBRARY_NO_PARSER_END:I = 0x7c

.field private static final PEDOMETER_VENDOR_ADSP:I = 0x3

.field private static final PEDOMETER_VENDOR_INVENSENSE:I = 0x2

.field private static final PEDOMETER_VENDOR_SENSORHUB:I = 0x1

.field private static final PEDOMETER_VENDOR_UNKNOWN:I = 0x0

.field private static final SEM_FEATURE_CONTEXT_LITE:I = 0x2

.field private static final SEM_FEATURE_SENSORHUB:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

.field private mFeature:I

.field private mPedometerVendor:I

.field mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

.field private final mServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/samsung/android/hardware/context/provider/EventListener;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "eventListener"    # Lcom/samsung/android/hardware/context/provider/EventListener;
    .param p4, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/hardware/context/provider/EventListener;",
            "I)V"
        }
    .end annotation

    .line 83
    .local p2, "availableServiceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mFeature:I

    .line 77
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mPedometerVendor:I

    .line 84
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mServiceMap:Ljava/util/Map;

    .line 86
    iput-object p3, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 87
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 88
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mFeature:I

    .line 90
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mPedometerVendor:I

    goto :goto_0

    .line 91
    :cond_0
    const-string v2, "com.sec.feature.scontext_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mFeature:I

    .line 93
    packed-switch p4, :pswitch_data_0

    .line 101
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mPedometerVendor:I

    goto :goto_0

    .line 98
    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mPedometerVendor:I

    .line 99
    goto :goto_0

    .line 95
    :pswitch_1
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mPedometerVendor:I

    .line 96
    nop

    .line 105
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getProvider(I)Lcom/samsung/android/hardware/context/provider/Provider;
    .locals 4
    .param p1, "service"    # I

    .line 114
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mServiceMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 115
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mFeature:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 116
    sparse-switch p1, :sswitch_data_0

    .line 175
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 176
    goto/16 :goto_0

    .line 161
    :sswitch_0
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/SlocationArDistanceImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/SlocationArDistanceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 162
    goto/16 :goto_0

    .line 165
    :sswitch_1
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 166
    goto/16 :goto_0

    .line 157
    :sswitch_2
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 158
    goto/16 :goto_0

    .line 153
    :sswitch_3
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/AutoBrightnessImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/AutoBrightnessImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 154
    goto/16 :goto_0

    .line 149
    :sswitch_4
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/StepLevelMonitorImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 150
    goto :goto_0

    .line 141
    :sswitch_5
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityNotificationImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 142
    goto :goto_0

    .line 137
    :sswitch_6
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityBatchImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 138
    goto :goto_0

    .line 145
    :sswitch_7
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 146
    goto :goto_0

    .line 133
    :sswitch_8
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/WakeUpVoiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 134
    goto :goto_0

    .line 127
    :sswitch_9
    const-string v0, "SemContextService"

    const-string v1, " does not support air-motion"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto :goto_0

    .line 122
    :sswitch_a
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 124
    goto :goto_0

    .line 118
    :sswitch_b
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/ApproachImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/ApproachImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 119
    goto :goto_0

    .line 178
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mFeature:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 179
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mPedometerVendor:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;I)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    .line 183
    nop

    .line 188
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextProvider;->mProvider:Lcom/samsung/android/hardware/context/provider/Provider;

    return-object v0

    .line 114
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x7 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x1a -> :sswitch_6
        0x1b -> :sswitch_5
        0x21 -> :sswitch_4
        0x27 -> :sswitch_3
        0x2f -> :sswitch_2
        0x34 -> :sswitch_1
        0x38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
