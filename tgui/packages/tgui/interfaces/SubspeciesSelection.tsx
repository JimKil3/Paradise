import { Stack } from 'tgui-core/components';

import { useBackend } from '../backend';
import { Window } from '../layouts';

type Data = {};

export const SubspeciesSelection = (props) => {
  const { act, data } = useBackend<Data>();

  return (
    <Window width={1105} height={650}>
      <Window.Content scrollable>
        <Stack fill vertical>
          <Stack.Item>hi</Stack.Item>
        </Stack>
      </Window.Content>
    </Window>
  );
};
