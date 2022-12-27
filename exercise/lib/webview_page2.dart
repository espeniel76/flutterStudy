import 'dart:math';

import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

import 'helpers.dart';

class WebViewXPage2 extends StatefulWidget {
  const WebViewXPage2({
    Key? key,
  }) : super(key: key);

  @override
  _WebViewXPage2State createState() => _WebViewXPage2State();
}

class _WebViewXPage2State extends State<WebViewXPage2> {
  late WebViewXController webviewController;
  final initialContent = """<p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-2500eed9-8e3d-4535-acdb-7b4782551877" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">지난 시간 우리는 be동사에 대하여 알아보았습니다.</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-5ebf1158-31da-4669-8895-6e722fd8e332" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-ffd16a3e-7e26-4d0d-9743-548feb939c53" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">오늘은 두번째 시간! 바로 조동사 입니다.</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-a250327c-5eec-467e-84ed-5f3e26f37875" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-61052c83-9947-4252-a069-95c384f6c6ae" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">영어의 8가지 품사 중 '동사'</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-8f43efee-a41a-4e67-a177-23c61547be8e" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">너무나도 중요한 거 알고 있죠?</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-6c70cd0a-f782-4cad-9e76-ce685ede6138" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-084e5724-9269-45b4-bce9-8d1e3246daa0" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">바로 문장의 마지막인 서술어를 담당하면서 끝맺음 역할을 하고 있는데요.</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-860359ab-7e1c-497b-8d75-1f49c31501f4" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-352ef9a3-d95c-4d4e-a844-8c93ec9a42d2" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">이러한 동사에는 3가지 종류의 동사가 있습니다.</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-9d596baf-c5f0-4eb8-b40a-dfd27bd9c4dc" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-df467d38-dc97-4784-b70d-08065dc67e07" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">1. be동사</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-bf7e60f8-7401-40f6-8b8d-65f04482beef" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">2. 조동사</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-11b2b0fd-d231-46c1-85e8-748e05ad4773" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">3. 일반동사</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-1ad5709a-dbf4-4ac1-b6cc-9d98f546d316" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-5375d0cd-ea18-421e-b6e7-d973175fce53" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">먼저 조동사의 의미부터 알아볼까요?</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-a1fdcf72-4354-4087-97ea-ed7e28ec84db" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">(우리나라 단어는 한자어가 많아서 뜻을 알면 이해가 잘 되는 경우가 많아요.)</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-fadc8074-35da-43fd-83a3-8ac1c2f759a3" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">모두들 한자공부도 ㄱ ㄱ ㄱ!!!</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-c81b36c3-f003-4194-bb36-20c9220ffc8f" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-162be5e4-718e-4ca3-bd3e-4f345c458aaf" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">조 + 동 + 사 = 돕다 + 움직이다 + 말</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-a7f8d500-a753-4328-924e-5ceb3db71e9a" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-89854b25-6fc4-4a6d-8e01-67cfe1063f25" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">풀어서 말하면 이런 뜻이에요.</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-feaa96ca-b468-4673-87e4-b9142e967cf8" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><strong><span class="se-fs-fs24 se-ff-nanummyeongjo" id="SE-528563e1-471e-46a0-8458-5e5da46b65bb" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 24px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">조동사란, 사람이나 사물의 움직임 또는 작용을 나타내는 동사를 돕는 것이요.</span></strong></p><p><strong><span class="se-fs-fs24 se-ff-nanummyeongjo" id="SE-6e2e7f97-6675-4bd8-b9c5-997e762eda10" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 24px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">다시 말해 </span><span class="se-fs-fs28 se-ff-nanummyeongjo" id="SE-eaf8b23e-191d-4df8-9ef3-a58b9d6c6bed" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 28px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline; color: rgb(0, 120, 203); background-color: rgb(255, 248, 178);">동사를 돕는 단어</span></strong><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-1d69ee5a-10d1-4345-ab76-2dd0904f190b" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">가 </span><strong><span class="se-fs-fs28 se-ff-nanummyeongjo" id="SE-9f936f54-1b87-44d2-b8f5-d52ed4698562" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 28px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline; color: rgb(0, 120, 203); background-color: rgb(255, 248, 178);">조동사</span></strong><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-be2cc0c8-1859-49c2-b59f-981c32857f76" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;"> 입니다.</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-365c8c67-f788-413b-a194-fbad6b55e617" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-135be7c2-6634-4546-a627-11d39152047b" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">따라서, </span><strong><span class="se-fs-fs19 se-ff-nanummyeongjo" id="SE-2076b301-4ba9-4162-831d-89525d1b3339" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 19px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline; color: rgb(255, 0, 16);">도와주는 역할이기 때문에 혼자 쓸 수 없어요.</span></strong></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-f7924466-7a90-4579-b5e7-3f12eaca8570" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-35c6d78c-b2fe-4abd-9f24-2746f9a7a4af" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">꼭!</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-17f8732f-90df-492f-b806-df88a0d13644" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-5f389fbf-3329-43c0-9341-ae583d510702" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">조동사 뒤에는 동사의 원형을 함께 써야 동사의 서술어 역할이 완성이 됩니다.</span></p><p><strong><span class="se-fs-fs30 se-ff-nanummyeongjo" id="SE-bd2cffa9-b2fb-4513-8578-09c59dd59a8f" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 30px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline; color: rgb(255, 0, 140);">조동사 + 동사원형</span></strong><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-90b748ac-159e-4611-8270-121d85cbdf90" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">(be동사의 원형은 be인거 알죠? ㅋ)</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-9a702f97-0e3e-4161-96ae-b05e77fa067d" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-e4349db0-9d4a-4968-a1d2-7ebe59c671e7" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">그리고 주어의 인칭에 관계없이 쓸 수 있어요.</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-dae8aa88-cef4-48f3-b5e6-ff7e306b80c6" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><strong><span class="se-fs-fs28 se-ff-nanummyeongjo" id="SE-36614b3d-555b-4725-b3b0-5ad7f12fe160" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 28px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline; background-color: rgb(227, 253, 200);">&lt;조동사의 종류&gt;</span></strong></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-11aee165-6307-4b8e-bfb7-1e729041db9a" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">너무 많지만 초등학교 기준으로 알아볼게요.</span></p><p><span class="se-fs-fs16 se-ff-nanummyeongjo" id="SE-e4c6c61f-1d0e-4a59-9ff8-190d4c65f029" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline;">​</span></p><p><strong><span class="se-fs-fs28 se-ff-nanummyeongjo" id="SE-7d18ad49-6698-4be5-b150-8b52344cb7af" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 28px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline; color: rgb(0, 120, 203);">1. can(= be able to)</span></strong></p><p><strong><span class="se-fs-fs28 se-ff-nanummyeongjo" id="SE-9f9437ff-a3ef-485c-87ac-23f6a1ad8a01" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 28px; line-height: inherit; font-family: se-nanummyeongjo, &quot;\\B098눔명조&quot;, nanummyeongjo, serif, simsun; vertical-align: baseline; color: rgb(0, 120, 203);">뜻: ~ 할 수 있다</span></strong></p><p><strong>[출처] <a href="https://blog.naver.com/etontop/222076390005">[초등 기초 문법: 조동사]</a><span style="margin: 0px; padding: 0px 7px 0px 5px; border: 0px; font: inherit; vertical-align: baseline;">|</span>작성자 <a href="https://blog.naver.com/etontop">김민희황현주원장</a></strong></p><p><br></p>""";
  final executeJsErrorMessage = 'Failed to execute this task because the current content is (probably) URL that allows iframe embedding, on Web.\n\n'
      'A short reason for this is that, when a normal URL is embedded in the iframe, you do not actually own that content so you cant call your custom functions\n'
      '(read the documentation to find out why).';

  Size get screenSize => MediaQuery.of(context).size;

  @override
  void dispose() {
    webviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebViewX Page'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // _buildWebViewX(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 0.1),
                ),
                child: _buildWebViewX(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWebViewX() {
    return WebViewX(
      key: const ValueKey('webviewx'),
      initialContent: initialContent,
      initialSourceType: SourceType.html,
      height: screenSize.height * 0.84,
      width: screenSize.width,
      onWebViewCreated: (controller) => webviewController = controller,
    );
  }

  void _setUrl() {
    webviewController.loadContent(
      'https://flutter.dev',
      SourceType.url,
    );
  }

  Future<void> _goForward() async {
    if (await webviewController.canGoForward()) {
      await webviewController.goForward();
      showSnackBar('Did go forward', context);
    } else {
      showSnackBar('Cannot go forward', context);
    }
  }

  Future<void> _goBack() async {
    if (await webviewController.canGoBack()) {
      await webviewController.goBack();
      showSnackBar('Did go back', context);
    } else {
      showSnackBar('Cannot go back', context);
    }
  }

  void _reload() {
    webviewController.reload();
  }

  Widget buildSpace({
    Axis direction = Axis.horizontal,
    double amount = 0.2,
    bool flex = true,
  }) {
    return flex
        ? Flexible(
            child: FractionallySizedBox(
              widthFactor: direction == Axis.horizontal ? amount : null,
              heightFactor: direction == Axis.vertical ? amount : null,
            ),
          )
        : SizedBox(
            width: direction == Axis.horizontal ? amount : null,
            height: direction == Axis.vertical ? amount : null,
          );
  }

  List<Widget> _buildButtons() {
    return [
      buildSpace(direction: Axis.vertical, flex: false, amount: 20.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: createButton(onTap: _goBack, text: 'Back')),
          buildSpace(amount: 12, flex: false),
          Expanded(child: createButton(onTap: _goForward, text: 'Forward')),
          buildSpace(amount: 12, flex: false),
          Expanded(child: createButton(onTap: _reload, text: 'Reload')),
        ],
      ),
      buildSpace(direction: Axis.vertical, flex: false, amount: 20.0),
      createButton(
        text: 'Change content to URL that allows iframes embedding\n(https://flutter.dev)',
        onTap: _setUrl,
      ),
    ];
  }
}
