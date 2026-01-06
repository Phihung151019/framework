.class public Lcom/android/ims/ImsUt$IImsUtListenerProxy;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IImsUtListenerProxy"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/ImsUt;


# direct methods
.method public static synthetic blacklist $r8$lambda$1IXiV_8duQUMYsyf9jet9QRsQ1U(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationCallForwardQueried$5(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7AGp-AI-YXO5Dcr27J3InwUHNP8(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationCallBarringQueried$4(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JbdoQJfXZfwcZNVvofBYYmAgldM(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationCallWaitingQueried$6(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W2begNeA7PNUsSlSwEil_UzhsiU(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationUpdateFailed$1(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f216zsn6j6ozXsXKMVjC3wM1Bz8(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsSsInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$lineIdentificationSupplementaryServiceResponse$2(ILandroid/telephony/ims/ImsSsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gUIbCOegBPEVmgE33QabrQ514n4(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationQueryFailed$3(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uhUNtUXwSCqzToFQMxS5NeAignw(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationUpdated$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x0bnHCbXRVm0_UlgkeTr7u00Nd8(Lcom/android/ims/ImsUt$IImsUtListenerProxy;Landroid/telephony/ims/ImsSsData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$onSupplementaryServiceIndication$7(Landroid/telephony/ims/ImsSsData;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/ImsUt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsUt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 694
    iput-object p1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$lineIdentificationSupplementaryServiceResponse$2(ILandroid/telephony/ims/ImsSsInfo;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "config"    # Landroid/telephony/ims/ImsSsInfo;

    .line 751
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-static {v1, v2, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 753
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onSupplementaryServiceIndication$7(Landroid/telephony/ims/ImsSsData;)V
    .locals 1
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 824
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmSsIndicationRegistrant(Lcom/android/ims/ImsUt;)Lcom/android/ims/Registrant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmSsIndicationRegistrant(Lcom/android/ims/ImsUt;)Lcom/android/ims/Registrant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 827
    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$utConfigurationCallBarringQueried$4(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 777
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 779
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 780
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 781
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    monitor-exit v1

    .line 783
    return-void

    .line 782
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic blacklist lambda$utConfigurationCallForwardQueried$5(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 793
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 795
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 796
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 797
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    monitor-exit v1

    .line 799
    return-void

    .line 798
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic blacklist lambda$utConfigurationCallWaitingQueried$6(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 811
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 812
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 813
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    monitor-exit v1

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic blacklist lambda$utConfigurationQueryFailed$3(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 761
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 763
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 764
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendFailureReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 765
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    monitor-exit v1

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic blacklist lambda$utConfigurationUpdateFailed$1(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 713
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 715
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 716
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendFailureReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 717
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    monitor-exit v1

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic blacklist lambda$utConfigurationUpdated$0(I)V
    .locals 4
    .param p1, "id"    # I

    .line 701
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 703
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 704
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v3}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;)V

    .line 705
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    monitor-exit v1

    .line 707
    return-void

    .line 706
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public blacklist lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "config"    # Landroid/telephony/ims/ImsSsInfo;

    .line 750
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsSsInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 756
    return-void
.end method

.method public blacklist onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 2
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 823
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;Landroid/telephony/ims/ImsSsData;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 828
    return-void
.end method

.method public blacklist utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 776
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 784
    return-void
.end method

.method public blacklist utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 792
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 800
    return-void
.end method

.method public blacklist utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 808
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 816
    return-void
.end method

.method public blacklist utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "ssInfo"    # Landroid/os/Bundle;

    .line 728
    const-string v0, "queryClir"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 729
    .local v0, "clirResponse":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 731
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    .line 732
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 733
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    .line 734
    .local v1, "info":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p0, p2, v1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 735
    return-void

    .line 737
    .end local v1    # "info":Landroid/telephony/ims/ImsSsInfo;
    :cond_0
    const-string v1, "imsSsInfo"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    .line 738
    .restart local v1    # "info":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {p0, p2, v1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 740
    return-void

    .line 742
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid utConfigurationQueried response received for Bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsUt"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void
.end method

.method public blacklist utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 760
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda6;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 768
    return-void
.end method

.method public blacklist utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 712
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 720
    return-void
.end method

.method public blacklist utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I

    .line 700
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda5;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 708
    return-void
.end method
