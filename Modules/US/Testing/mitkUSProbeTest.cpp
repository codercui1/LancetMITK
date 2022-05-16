/*============================================================================

The Medical Imaging Interaction Toolkit (MITK)

Copyright (c) German Cancer Research Center (DKFZ)
All rights reserved.

Use of this source code is governed by a 3-clause BSD license that can be
found in the LICENSE file.

============================================================================*/

#include "mitkUSProbe.h"
#include "mitkTestingMacros.h"


class mitkUSProbeTestClass
{
public:


  static void TestInstantiation()
  {
    // let's create an object of our class
    mitk::USProbe::Pointer probe = mitk::USProbe::New();
    MITK_TEST_CONDITION_REQUIRED(probe.IsNotNull(), "USProbe should not be null after instantiation");
  }

    static void TestIsEqualToProbe()
  {
    mitk::USProbe::Pointer usSource = mitk::USProbe::New();
    mitk::USProbe::Pointer probeA = mitk::USProbe::New();
    mitk::USProbe::Pointer probeB = mitk::USProbe::New();
    mitk::USProbe::Pointer probea = mitk::USProbe::New();
    mitk::USProbe::Pointer identicalProbe = mitk::USProbe::New();
    probeA->SetName("ProbeA");
    probeB->SetName("ProbeB");
    probea->SetName("Probea");
    identicalProbe->SetName("ProbeA");
    MITK_TEST_CONDITION_REQUIRED(! probeA->IsEqualToProbe(probeB), "ProbeA and probeB should not be equal");
    MITK_TEST_CONDITION_REQUIRED(! probeA->IsEqualToProbe(probea), "ProbeA and probea should not be equal");
    MITK_TEST_CONDITION_REQUIRED(probeA->IsEqualToProbe(identicalProbe), "ProbeA and probeA should be equal");
  }



};

/**
* This function is testing methods of the class USProbe.
*/
int mitkUSProbeTest(int /* argc */, char* /*argv*/[])
{
  MITK_TEST_BEGIN("mitkUSProbeTest");

    mitkUSProbeTestClass::TestInstantiation();
    mitkUSProbeTestClass::TestIsEqualToProbe();

  MITK_TEST_END();
}
